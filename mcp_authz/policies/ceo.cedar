@id("Describe the policy here")
permit (
  principal,
  action == Jans::Action::"Write",
  resource is Jans::Application
);