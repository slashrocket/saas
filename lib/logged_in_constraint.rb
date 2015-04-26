class LoggedInConstraint
  def matches?(request)
    request.cookies['_saas_session'].present?
  end
end
