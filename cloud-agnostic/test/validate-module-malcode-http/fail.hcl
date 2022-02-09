param "address" {
  value = "app.terraform.io"
}

param "token" {
  value = ""
}

module "tfconfig-functions" {
  source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-fail.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-fail.sentinel"
  }
}

mock "tfrun" {
  module {
    source = "mock-tfrun.sentinel"
  }
}

test {
  rules = {
    main = false
  }
}
