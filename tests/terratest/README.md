## About
This directory contains unit tests.
The integration tests use the [examples-test-domain](../../examples/test-domain). This will create an
certificate using Lets Encrypt and Azure DNS.
### Note
We are waiting on the domain validation from HMCTS for lab-hmcts.net but for now
we are using a temporary domain of megaloop.world. Once the lab-hmcts.net is
validated. The tests vars  should be changed to the below in cert_test.go.
```bash
TerraformDir: "../../examples/complete",

```

## Usage

From the root of the repo run
```bash
go mod init github.com/hmcts/cpp-module-terraform-lets-encrypt
```

To execute the tests execute the following from within the test file's folder:
Ensure your go environment is setup.

```bash
go test -v pre_test.go
```
In order to exercise the test you will need to run as a service principle.
If running locally the following is environment variables are required.
See the "ado_nonlive_service_principal_lab" to get the values required values
and create short TTL secret while testing locally

```bash
export ARM_TENANT_ID="e2995d11-xxxxxxxxxxxxxxxxx"
export ARM_SUBSCRIPTION_ID="8cdb5405-xxxxxxxxxxx"
export ARM_CLIENT_ID="e2372d33-xxxxxxxxxxxxxxxxx"
export ARM_CLIENT_SECRET="xxxx-xxxxx-xxxx-xxx-xx"
```

Run the terratest which will validate the module.
```bash
go test -v -timeout 30m cert_test.go
```
