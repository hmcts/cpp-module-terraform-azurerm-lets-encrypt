package test

import (
	"testing"

	"github.com/gruntwork-io/terratest/modules/azure"
	"github.com/gruntwork-io/terratest/modules/terraform"
	"github.com/stretchr/testify/assert"
)

func TestTerraformAzureKeyVaultExample(t *testing.T) {
	t.Parallel()

	terraformOptions := &terraform.Options{
		// The path to where our Terraform code is located
		TerraformDir: "../../examples/test-domain",
		// Variables to pass to our Terraform code using -var options
		VarFiles: []string{"for_terratest.tfvars"},
	}

	defer terraform.Destroy(t, terraformOptions)

	// Run `terraform init` and `terraform apply`. Fail the test if there are any errors.
	terraform.InitAndApply(t, terraformOptions)

	// Run `terraform output` to get the values of output variables
	resourceGroupName := terraform.Output(t, terraformOptions, "resource_group_name")
	keyVaultName := terraform.Output(t, terraformOptions, "key_vault_name")
	expectedCertificateName := terraform.Output(t, terraformOptions, "certificate_name")

	// Determine whether the keyvault exists
	keyVault := azure.GetKeyVault(t, resourceGroupName, keyVaultName, "")
	assert.Equal(t, keyVaultName, *keyVault.Name)

	certificateExists := azure.KeyVaultCertificateExists(t, keyVaultName, expectedCertificateName)
	assert.True(t, certificateExists, "kv-cert does not exist")

}
