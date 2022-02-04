param "address" {
  value = "app.terraform.io"
}

param "token" {
  value = "mKdF9sDkWN6reQ.atlasv1.YilV6kQ5yfA404Woy9XSxynTVbNgFi4Vz1UnNF9SjUyGzlT7LtreMbC0Wa6cb9OajwY"
}

module "tfconfig-functions" {
  source = "../../../common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfplan-functions" {
  source = "../../../common-functions/tfplan-functions/tfplan-functions.sentinel"
}

mock "tfconfig/v2" {
  module {
    source = "mock-tfconfig-pass.sentinel"
  }
}

mock "tfplan/v2" {
  module {
    source = "mock-tfplan-pass.sentinel"
  }
}

mock "tfrun" {
  module {
    source = "mock-tfrun.sentinel"
  }
}

test {
  rules = {
    main = true
  }
}
