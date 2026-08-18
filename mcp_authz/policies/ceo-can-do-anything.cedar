@id("Describe the policy here")
permit (
  principal,
  action == Jans::Action::"Write",
  resource is Jans::Application
)
when {
    principal has userinfo_token &&
    principal.userinfo_token has role &&
    principal.userinfo_token.role.contains("ceo")
};