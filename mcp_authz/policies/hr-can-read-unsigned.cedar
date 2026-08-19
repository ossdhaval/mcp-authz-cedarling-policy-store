@id("hr-can-read-unsigned")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::Application
)
when {
      principal has role &&
  principal.role.contains("hr")
};