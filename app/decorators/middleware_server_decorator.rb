class MiddlewareServerDecorator < Draper::Decorator
  delegate_all

  def fonticon
    nil
  end

  def listicon_image
    item_image
  end

  private

  # Determine the icon
  # we want to display a different icon depending of the type
  # of server we have.
  def item_image
    case product
    when 'Hawkular'
      'vendor-hawkular'
    when 'JBoss EAP'
      'vendor-jboss-eap'
    else
      'vendor-wildfly'
    end
  end

end