# ==============================Namespaces============================
# Manage namespaces
path "sys/namespaces/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# ==============================Policies==============================
# Manage policies via API
path "sys/policies/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# Manage policies via CLI
path "sys/policy/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}

# List policies via CLI
path "sys/policy" {
  capabilities = ["read", "update", "list"]
}

# ==============================Secrets Engines=======================
# Enable and manage secrets engines
path "sys/mounts/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List available secret engines
path "sys/mounts" {
  capabilities = ["read", "list"]
}

# ==============================Auth Providers=======================
# Enable and manage auth providers
path "sys/auth/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# List available auth providers
path "sys/auth" {
  capabilities = ["read", "list"]
}

# ==============================Identity==============================
# Create and manage entities and groups
path "identity/*" {
  capabilities = ["create", "read", "update", "delete", "list"]
}

# ==============================Tokens================================
# Manage tokens
path "auth/token/*" {
  capabilities = ["create", "read", "update", "delete", "list", "sudo"]
}
