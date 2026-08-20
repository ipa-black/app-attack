package com.adcolony.sdk;

import com.adcolony.sdk.e0;
import com.applovin.sdk.AppLovinEventTypes;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.TimeZone;
import org.json.JSONException;
/* loaded from: classes.dex */
public class AdColonyEventTracker {
    public static final String CUSTOM_EVENT_1 = "ADCT_CUSTOM_EVENT_1";
    public static final String CUSTOM_EVENT_2 = "ADCT_CUSTOM_EVENT_2";
    public static final String CUSTOM_EVENT_3 = "ADCT_CUSTOM_EVENT_3";
    public static final String CUSTOM_EVENT_4 = "ADCT_CUSTOM_EVENT_4";
    public static final String CUSTOM_EVENT_5 = "ADCT_CUSTOM_EVENT_5";
    public static final String LOGIN_DEFAULT = "ADCT_DEFAULT_LOGIN";
    public static final String LOGIN_FACEBOOK = "ADCT_FACEBOOK_LOGIN";
    public static final String LOGIN_GOOGLE = "ADCT_GOOGLE_LOGIN";
    public static final String LOGIN_LINKEDIN = "ADCT_LINKEDIN_LOGIN";
    public static final String LOGIN_OPENID = "ADCT_OPENID_LOGIN";
    public static final String LOGIN_TWITTER = "ADCT_TWITTER_LOGIN";
    public static final String REGISTRATION_CUSTOM = "ADCT_CUSTOM_REGISTRATION";
    public static final String REGISTRATION_DEFAULT = "ADCT_DEFAULT_REGISTRATION";
    public static final String REGISTRATION_FACEBOOK = "ADCT_FACEBOOK_REGISTRATION";
    public static final String REGISTRATION_GOOGLE = "ADCT_GOOGLE_REGISTRATION";
    public static final String REGISTRATION_LINKEDIN = "ADCT_LINKEDIN_REGISTRATION";
    public static final String REGISTRATION_OPENID = "ADCT_OPENID_REGISTRATION";
    public static final String REGISTRATION_TWITTER = "ADCT_TWITTER_REGISTRATION";
    public static final String SOCIAL_SHARING_CUSTOM = "ADCT_CUSTOM_SHARING";
    public static final String SOCIAL_SHARING_FACEBOOK = "ADCT_FACEBOOK_SHARING";
    public static final String SOCIAL_SHARING_FLICKR = "ADCT_FLICKR_SHARING";
    public static final String SOCIAL_SHARING_FOURSQUARE = "ADCT_FOURSQUARE_SHARING";
    public static final String SOCIAL_SHARING_GOOGLE = "ADCT_GOOGLE_SHARING";
    public static final String SOCIAL_SHARING_INSTAGRAM = "ADCT_INSTAGRAM_SHARING";
    public static final String SOCIAL_SHARING_LINKEDIN = "ADCT_LINKEDIN_SHARING";
    public static final String SOCIAL_SHARING_PINTEREST = "ADCT_PINTEREST_SHARING";
    public static final String SOCIAL_SHARING_SNAPCHAT = "ADCT_SNAPCHAT_SHARING";
    public static final String SOCIAL_SHARING_TUMBLR = "ADCT_TUMBLR_SHARING";
    public static final String SOCIAL_SHARING_TWITTER = "ADCT_TWITTER_SHARING";
    public static final String SOCIAL_SHARING_VIMEO = "ADCT_VIMEO_SHARING";
    public static final String SOCIAL_SHARING_VINE = "ADCT_VINE_SHARING";
    public static final String SOCIAL_SHARING_YOUTUBE = "ADCT_YOUTUBE_SHARING";

    /* renamed from: a  reason: collision with root package name */
    private static final List<f1> f83a = Collections.synchronizedList(new ArrayList());

    static void a(f1 f1Var) {
        List<f1> list = f83a;
        synchronized (list) {
            if (200 > list.size()) {
                list.add(f1Var);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void b() {
        k b2 = a.b();
        if (b2.v().equals("") || !b2.I()) {
            return;
        }
        List<f1> list = f83a;
        synchronized (list) {
            for (f1 f1Var : list) {
                b(f1Var);
            }
            f83a.clear();
        }
    }

    private static void c(f1 f1Var) {
        f1 f2 = c0.f(f1Var, "payload");
        if (l.H) {
            c0.a(f2, "api_key", "bb2cf0647ba654d7228dd3f9405bbc6a");
        } else {
            c0.a(f2, "api_key", a.b().v());
        }
        try {
            f1Var.r("payload");
            f1Var.a("payload", f2);
        } catch (JSONException e2) {
            e2.printStackTrace();
        }
    }

    private static void d(f1 f1Var) {
        c0.a(f1Var, "timezone", TimeZone.getDefault().getID());
        c0.a(f1Var, "action_time", String.valueOf(Math.round((float) (System.currentTimeMillis() / 1000))));
    }

    public static void logAchievementUnlocked(String str) {
        if (a(str, "logAchievementUnlocked")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("description", str);
        logEvent("achievement_unlocked", hashMap);
    }

    public static void logActivated() {
        logEvent("activated");
    }

    public static void logAdImpression() {
        logEvent(FirebaseAnalytics.Event.AD_IMPRESSION);
    }

    public static void logAddToCart(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.ITEM_ID, str);
        logEvent(FirebaseAnalytics.Event.ADD_TO_CART, hashMap);
    }

    public static void logAddToWishlist(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.ITEM_ID, str);
        logEvent(FirebaseAnalytics.Event.ADD_TO_WISHLIST, hashMap);
    }

    public static void logAppOpen() {
        logEvent(FirebaseAnalytics.Event.APP_OPEN);
    }

    public static void logAppRated() {
        logEvent("app_rated");
    }

    public static void logCheckoutInitiated() {
        logEvent("checkout_initiated");
    }

    public static void logContentView(String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("content_id", str);
        hashMap.put(FirebaseAnalytics.Param.CONTENT_TYPE, str2);
        logEvent("content_view", hashMap);
    }

    public static void logCreditsSpent(String str, Integer num, Double d2, String str2) {
        if (str2 != null && str2.length() != 3) {
            new e0.a().a("Event logCreditsSpentWithName currency code is specified, but a three-letter ISO 4217 code, (e.g.: 'USD'). Event will not be sent.").a(e0.f297h);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("name", str);
        hashMap.put(FirebaseAnalytics.Param.QUANTITY, String.valueOf(num));
        hashMap.put("value", String.valueOf(d2));
        hashMap.put("currency_code", str2);
        logEvent("credits_spent", hashMap);
    }

    public static void logCustomEvent(String str, String str2) {
        if (a(str2, "logCustomEvent")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("event", str);
        hashMap.put("description", str2);
        logEvent("custom_event", hashMap);
    }

    public static void logEvent(String str) {
        logEvent(str, null);
    }

    public static void logInvite() {
        logEvent(AppLovinEventTypes.USER_SENT_INVITATION);
    }

    public static void logLevelAchieved(Integer num) {
        HashMap hashMap = new HashMap();
        hashMap.put("level_achieved", String.valueOf(num));
        logEvent("level_achieved", hashMap);
    }

    public static void logLogin(String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.METHOD, str);
        logEvent("login", hashMap);
    }

    public static void logPaymentInfoAdded() {
        logEvent("payment_info_added");
    }

    public static void logRegistrationCompleted(String str, String str2) {
        if (a(str2, "logRegistrationCompleted")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.METHOD, str);
        hashMap.put("description", str2);
        logEvent("registration_completed", hashMap);
    }

    public static void logReservation() {
        logEvent(AppLovinEventTypes.USER_CREATED_RESERVATION);
    }

    public static void logSearch(String str) {
        if (str != null && str.length() > 512) {
            new e0.a().a("logSearch searchString cannot exceed 512 characters. Event will ").a("not be sent.").a(e0.f297h);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("search_string", str);
        logEvent("search", hashMap);
    }

    public static void logSocialSharingEvent(String str, String str2) {
        if (a(str2, "logSocialSharingEvent")) {
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("network", str);
        hashMap.put("description", str2);
        logEvent("social_sharing_event", hashMap);
    }

    public static void logTransaction(String str, Integer num, Double d2, String str2, String str3, String str4, String str5) {
        if (a(str5, "logTransaction")) {
            return;
        }
        if (str2 != null && str2.length() != 3) {
            new e0.a().a("Event logCreditsSpentWithName currency code is specified, but a three-letter ISO 4217 code, (e.g.: 'USD'). Event will not be sent.").a(e0.f297h);
            return;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(FirebaseAnalytics.Param.ITEM_ID, str);
        hashMap.put(FirebaseAnalytics.Param.QUANTITY, String.valueOf(num));
        hashMap.put("price", String.valueOf(d2));
        hashMap.put("currency_code", str2);
        hashMap.put("receipt", str3);
        hashMap.put("store", str4);
        hashMap.put("description", str5);
        logEvent("transaction", hashMap);
    }

    public static void logTutorialCompleted() {
        logEvent("tutorial_completed");
    }

    public static void logEvent(String str, HashMap<String, String> hashMap) {
        f1 b2 = c0.b();
        c0.a(b2, "event_name", str);
        f1 b3 = c0.b();
        if (hashMap != null) {
            for (Map.Entry<String, String> entry : hashMap.entrySet()) {
                if (entry.getValue() != null && !entry.getValue().equals("null")) {
                    c0.a(b3, entry.getKey(), entry.getValue());
                }
            }
        }
        d(b3);
        c0.a(b2, "payload", b3);
        b(b2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        boolean z;
        List<f1> list = f83a;
        synchronized (list) {
            z = list.size() != 0;
        }
        return z;
    }

    private static void b(f1 f1Var) {
        k b2 = a.b();
        if (!b2.v().equals("") && b2.I()) {
            c(f1Var);
            new h0("AdColony.log_event", 1, f1Var).c();
            return;
        }
        a(f1Var);
    }

    private static boolean a(String str, String str2) {
        if (str == null || str.length() <= 512) {
            return false;
        }
        new e0.a().a("Description of event ").a(str2).a(" must be less").a(" than 512 characters").a(e0.f297h);
        return true;
    }
}
