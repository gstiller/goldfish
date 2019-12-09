# [mandatory]
# store goldfish run-time settings here
# goldfish hot-reloads from this endpoint every minute
path "secret/goldfish" {
  capabilities = ["read", "update"]
}


# [optional]
# to enable transit encryption, see wiki for details
path "transit/encrypt/goldfish" {
  capabilities = ["read", "update"]
}
path "transit/decrypt/goldfish" {
  capabilities = ["read", "update"]
}


# [optional]
# for goldfish to fetch certificates from PKI backend
path "pki/issue/goldfish" {
  capabilities = ["update"]
}

# vault 1.3.0 compatibility
path "/auth/token/lookup-self" {
  capabilities = ["read"]
}

path "auth/token/renew-self" {
  capabilities = ["create", "update"]
}
