@id("CEO can do anything")
permit (
  principal,
  action,
  resource is Jans::Application
)
when {
    principal has userinfo_token &&
    principal.userinfo_token has role &&
    principal.userinfo_token.role.contains("ceo")
};