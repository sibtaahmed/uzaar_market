// To parse this JSON data, do
//
//     final loginModel = loginModelFromJson(jsonString);

import 'dart:convert';

LoginModel loginModelFromJson(String str) => LoginModel.fromJson(json.decode(str));

String loginModelToJson(LoginModel data) => json.encode(data.toJson());

class LoginModel {
    String? status;
    String? message;
    Data? data;

    LoginModel({
        this.status,
        this.data,
        this.message
    });

    factory LoginModel.fromJson(Map<String, dynamic> json) => LoginModel(
        status: json["status"],
        message: json["message"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
    );

    Map<String, dynamic> toJson() => {
        "status": status,
        "data": data?.toJson(),
    };
}

class Data {
    int? usersCustomersId;
    String? oneSignalId;
    String? listingsRatings;
    String? isGuest;
    String? firstName;
    String? lastName;
    String? email;
    String? password;
    String? profilePic;
    String? phone;
    String? address;
    String? latitude;
    String? longitude;
    String? accountType;
    String? socialAccountType;
    String? googleAccessToken;
    String? facebookAccessToken;
    String? appleAccessToken;
    dynamic badgeVerified;
    String? notifications;
    String? messages;
    String? orderStatus;
    String? reviews;
    String? offers;
    String? emailVerificationOtp;
    String? emailVerified;
    String? forgotPasswordOtp;
    DateTime? dateAdded;
    DateTime? dateModified;
    String? status;

    Data({
        this.usersCustomersId,
        this.oneSignalId,
        this.listingsRatings,
        this.isGuest,
        this.firstName,
        this.lastName,
        this.email,
        this.password,
        this.profilePic,
        this.phone,
        this.address,
        this.latitude,
        this.longitude,
        this.accountType,
        this.socialAccountType,
        this.googleAccessToken,
        this.facebookAccessToken,
        this.appleAccessToken,
        this.badgeVerified,
        this.notifications,
        this.messages,
        this.orderStatus,
        this.reviews,
        this.offers,
        this.emailVerificationOtp,
        this.emailVerified,
        this.forgotPasswordOtp,
        this.dateAdded,
        this.dateModified,
        this.status,
    });

    factory Data.fromJson(Map<String, dynamic> json) => Data(
        usersCustomersId: json["users_customers_id"],
        oneSignalId: json["one_signal_id"],
        listingsRatings: json["listings_ratings"],
        isGuest: json["is_guest"],
        firstName: json["first_name"],
        lastName: json["last_name"],
        email: json["email"],
        password: json["password"],
        profilePic: json["profile_pic"],
        phone: json["phone"],
        address: json["address"],
        latitude: json["latitude"],
        longitude: json["longitude"],
        accountType: json["account_type"],
        socialAccountType: json["social_account_type"],
        googleAccessToken: json["google_access_token"],
        facebookAccessToken: json["facebook_access_token"],
        appleAccessToken: json["apple_access_token"],
        badgeVerified: json["badge_verified"],
        notifications: json["notifications"],
        messages: json["messages"],
        orderStatus: json["order_status"],
        reviews: json["reviews"],
        offers: json["offers"],
        emailVerificationOtp: json["email_verification_otp"],
        emailVerified: json["email_verified"],
        forgotPasswordOtp: json["forgot_password_otp"],
        dateAdded: json["date_added"] == null ? null : DateTime.parse(json["date_added"]),
        dateModified: json["date_modified"] == null ? null : DateTime.parse(json["date_modified"]),
        status: json["status"],
    );

    Map<String, dynamic> toJson() => {
        "users_customers_id": usersCustomersId,
        "one_signal_id": oneSignalId,
        "listings_ratings": listingsRatings,
        "is_guest": isGuest,
        "first_name": firstName,
        "last_name": lastName,
        "email": email,
        "password": password,
        "profile_pic": profilePic,
        "phone": phone,
        "address": address,
        "latitude": latitude,
        "longitude": longitude,
        "account_type": accountType,
        "social_account_type": socialAccountType,
        "google_access_token": googleAccessToken,
        "facebook_access_token": facebookAccessToken,
        "apple_access_token": appleAccessToken,
        "badge_verified": badgeVerified,
        "notifications": notifications,
        "messages": messages,
        "order_status": orderStatus,
        "reviews": reviews,
        "offers": offers,
        "email_verification_otp": emailVerificationOtp,
        "email_verified": emailVerified,
        "forgot_password_otp": forgotPasswordOtp,
        "date_added": dateAdded?.toIso8601String(),
        "date_modified": dateModified?.toIso8601String(),
        "status": status,
    };
}
