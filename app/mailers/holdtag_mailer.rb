class HoldtagMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.holdtag_mailer...subject
  #
  # def .
  #   @greeting = "Hi"

  #   mail to: "to@example.org"
  # end

  default from: "dgleba@stackpole.com"
  #no works..  include ActionView::Helpers::ApplicationHelper
  # add_template_helper(DgrailHelper)
  
  def holdtag_email(tbl_quality_issue)
    @tbl_quality_issue = tbl_quality_issue

    mlist1test =  [ 
    'dgleba@stackpole.com',
    ]
    
     mlist1 =  [ 
    'dgleba@stackpole.com',
    ]

    #  mail(to: mlist1test ,  subject: 'CSD1-Sinter Shift Report Record Submitted')
    mail(to: mlist1test ,  subject: 'test holdtag mailer 06ht1')
  end

end




