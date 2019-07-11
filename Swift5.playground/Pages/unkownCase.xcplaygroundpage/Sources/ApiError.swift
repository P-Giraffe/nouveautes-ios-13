
public enum ApiError : Error {
    case NotFound
    case InvalidRequest
    case Forbidden
}

public func generateError() -> ApiError {
    return .Forbidden
}
