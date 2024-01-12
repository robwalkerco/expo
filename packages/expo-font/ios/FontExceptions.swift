import ExpoModulesCore

internal final class FontAlreadyExistsException: GenericException<String> {
  override var reason: String {
    "Font with family name '\(param)' has already been loaded"
  }
}

internal final class FontFileNotFoundException: GenericException<(path: String, name: String)> {
  override var reason: String {
    "File '\(param.path)' for font '\(param.name)' doesn't exist"
  }
}

internal final class FontCreationFailedException: GenericException<String> {
  override var reason: String {
    "Could not create font from loaded data for '\(param)'"
  }
}

internal final class FontRegistrationFailedException: GenericException<CFError> {
  override var reason: String {
    "Registering '\(param)' font failed with message: '\(param.localizedDescription)'"
  }
}
