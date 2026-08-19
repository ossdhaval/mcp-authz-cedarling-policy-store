@id("hr-can-read-unsignedss")
permit (
  principal,
  action == Jans::Action::"Read",
  resource is Jans::Application
)
when {
      principal has role &&
  principal.role.contains("hr")
};