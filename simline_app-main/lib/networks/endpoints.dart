// ignore_for_file: constant_identifier_names, non_constant_identifier_names

// const String url = "https://iunctura.softvencefsd.xyz";
const String url = "https://elinabell.softvencefsd.xyz";
const String imageUrl = "$url/";

//implementation 'com.facebook.android:facebook-android-sdk:[4,5)'

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
  
}

final class PaymentGateway {
  PaymentGateway._();
  static String gateway(String orderId) =>
      "https://demo.vivapayments.com/web/checkout?ref={$orderId}";
}

final class Endpoints {
  Endpoints._();

//in use

//signup
  static String createAccountEndpoint() => "/api/register";
  static String verifyOtpEndPoint() => "/api/reg/verify-otp";

//signup with google
  static String socialLogin() => "/api/social/login";

//login
  static String userLogin() => "/api/login";
  static String logOut() => "/api/logout";

//logout
  static String logoutEndPoint() => "/api/logout";

  //profile
  static String getProfile() => "/api/profile";
  static String updateProfile() => "/api/profile/create";
  static String createProfile() => "/api/profile/create";

//delete account
  static String deleteAccount() => "/api/remove/account";

  //send otp
  static String sendOTPEndPoint() => "/api/auth/forgot-password";

  //send otp
  static String verifyOTPEndPoint() => "/api/auth/verify-otp";

  // profile
  static String ownProfileEndPoint() => "/api/view-profile";

  // resetPassword
  static String resetPasswordEndPoint() => "/api/auth/reset-password";

  // get challenge response
  static String getChallengeResponseEndPoint() => "/api/get-task";
  static String postChallengeDataEndPoint() => "/api/challenge-point/create";

  // profile Update EndPoint
  static String profileUpdateEndPoint() => "/api/profile-update";
  static String getPortfolio() => "/api/portfolio";

  // home data api EndPoint
  static String homeDataApiEndPoint() => "/api/get-cms";

  // leader board api EndPoint
  static String leaderBoardApiEndPoint({required int id}) =>
      "/api/leaderboard?id=$id";

  // lets train EndPoint
  static String letsTrainEndPoint({required String filterNameId}) =>
      "/api/train/$filterNameId";

  // lets learn EndPoint
  static String letsLearnEndPoint({required String filterNameId}) =>
      "/api/learn/$filterNameId";

  // get Movement EndPoint
  static String getMovement() => "/api/roadmap/movement";

  // get Manipulation EndPoint
  static String getManipulation() => "/api/roadmap/manipulation";

  // get Control EndPoint
  static String getControl() => "/api/roadmap/control";

  // get Striking EndPoint
  static String getStriking() => "/api/roadmap/striking";

  // get Achivement Movement EndPoint
  static String getAchivementMovement() => "/api/achievement/movement";

  // get Achivement Manipulation EndPoint
  static String getAchivementManipulation() => "/api/achievement/manipulation";

  // get Achivement Control EndPoint
  static String getAchivementControl() => "/api/achievement/control";

  // get Achivement Control EndPoint
  static String getAchivementStriking() => "/api/achievement/striking";


  ///Jobs
  static String getAppliedJobList() => "/api/my-applications";
  static String getSavedJobList() => "/api/jobs/saved/list";
  static String getJobDetails({required int id}) => "/api/jobs/$id";
  static String getFeaturedJob() => "/api/jobs/featured/post";
  static String getRecentJob() => "/api/jobs/recent/post";


  ///Service
  static String getService() => "/api/services";
  static String getServiceDetails({required int id}) => "/api/services/$id";

  ///Faq
  static String getFaq() => "/api/faqs";

  ///terms condition
  static String getTermsCondition() => "/api/terms-conditions";

  ///privacy policy
  static String getPrivacyPolicy() => "/api/privacy-policy";

  ///Category
  static String getCategory() => "/api/categories";
  static String getJobByCategory(int id) => "/api/categories/$id/jobs";

  /////Popular
  static String getPopular() => "/api/categories/popular";

  ///Trending
  static String getTranding() => "/api/trending-categories";

  /////Freelancer
  static String getFreelancer() => "/api/freelancers/highest-rated";

  ///Reviews
  static String getMyReview() => "/api/reviews";

  ///Change Password
  static String changePassWord() => "/api/change-password";

  ///Message
  static String getChatList() => "/api/conversations";
  static String messageSend() => "/api/messages/send";
  static String getMessageList(int id) => "/api/conversations/$id";

}
