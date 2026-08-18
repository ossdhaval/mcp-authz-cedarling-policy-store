@id("hr-can-read")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::Application
)
when {
    principal has userinfo_token &&
    principal.userinfo_token has role &&
    principal.userinfo_token.role.contains("hr")
};