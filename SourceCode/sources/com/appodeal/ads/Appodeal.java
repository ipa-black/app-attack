package com.appodeal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.Pair;
import com.applovin.sdk.AppLovinEventParameters;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.appodeal.ads.Native;
import com.appodeal.ads.UserSettings;
import com.appodeal.ads.h2;
import com.appodeal.ads.inapp.InAppPurchase;
import com.appodeal.ads.inapp.InAppPurchaseValidateCallback;
import com.appodeal.ads.initializing.ApdInitializationCallback;
import com.appodeal.ads.modules.common.internal.Constants;
import com.appodeal.ads.modules.common.internal.LogConstants;
import com.appodeal.ads.regulator.CCPAUserConsent;
import com.appodeal.ads.regulator.GDPRUserConsent;
import com.appodeal.ads.revenue.AdRevenueCallbacks;
import com.appodeal.ads.rewarded.Reward;
import com.appodeal.ads.t0;
import com.appodeal.ads.utils.Log;
import com.appodeal.ads.x5;
import com.appodeal.consent.Consent;
import com.google.firebase.analytics.FirebaseAnalytics;
import com.ironsource.mediationsdk.IronSourceSegment;
import com.ironsource.mediationsdk.adunit.data.DataKeys;
import com.onesignal.outcomes.data.OutcomeEventsTable;
import com.onesignal.shortcutbadger.impl.NewHtcHomeBadger;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridge;
import com.unity3d.services.ads.gmascar.bridges.mobileads.MobileAdsBridgeBase;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import kotlin.Deprecated;
import kotlin.Metadata;
import kotlin.ReplaceWith;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.Intrinsics;
@Metadata(bv = {}, d1 = {"\u0000ì\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0011\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000e\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0017\bÆ\u0002\u0018\u00002\u00020\u0001J,\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0007J*\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\fH\u0007J*\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u000eH\u0007J\"\u0010\u000b\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010\u0011\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J\u0019\u0010\u0012\u001a\u00020\n2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0010\u0010\u0015\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0014H\u0007J\u0010\u0010\u0017\u001a\u00020\n2\u0006\u0010\u000f\u001a\u00020\u0016H\u0007J\u0012\u0010\u0012\u001a\u00020\n2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0007J\u0010\u0010\u0018\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J\u0012\u0010\u001b\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u0019H\u0007J\u0012\u0010\u001d\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001cH\u0007J\u0012\u0010\u001f\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\u001eH\u0007J\u0012\u0010!\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010 H\u0007J\u0012\u0010#\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010\"H\u0007J\u0012\u0010%\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010$H\u0007J\u0012\u0010'\u001a\u00020\n2\b\u0010\u001a\u001a\u0004\u0018\u00010&H\u0007J\u0010\u0010)\u001a\u00020\n2\u0006\u0010\u0010\u001a\u00020(H\u0007J\u0018\u0010*\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J \u0010*\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010+\u001a\u00020\u0006H\u0007J\u001a\u0010,\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\"\u0010,\u001a\u00020\f2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010-\u001a\u00020\u0004H\u0007J\u001a\u0010.\u001a\u00020\n2\b\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0018\u00100\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\fH\u0007J\u0018\u00102\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u00101\u001a\u00020\fH\u0007J\b\u00103\u001a\u00020\fH\u0007J\u0010\u00105\u001a\u00020\n2\u0006\u00104\u001a\u00020\fH\u0007J\u0010\u00106\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u00107\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J\u0010\u00109\u001a\u00020\n2\u0006\u00108\u001a\u00020\u0006H\u0007J\u0010\u0010=\u001a\u00020<2\u0006\u0010;\u001a\u00020:H\u0007J\u0010\u0010?\u001a\u00020\n2\u0006\u0010>\u001a\u00020\fH\u0007J\b\u0010@\u001a\u00020\fH\u0007J\u0010\u0010A\u001a\u00020\n2\u0006\u0010>\u001a\u00020\fH\u0007J\u0010\u0010C\u001a\u00020\n2\u0006\u0010B\u001a\u00020\fH\u0007J\u0018\u0010F\u001a\u00020\n2\u0006\u0010D\u001a\u00020\u00062\u0006\u0010E\u001a\u00020\u0006H\u0007J\u0010\u0010H\u001a\u00020\n2\u0006\u0010G\u001a\u00020\fH\u0007J\u0010\u0010J\u001a\u00020\n2\u0006\u0010I\u001a\u00020\u0006H\u0007J\u0010\u0010L\u001a\u00020K2\u0006\u0010;\u001a\u00020:H\u0007J\u0010\u0010O\u001a\u00020\n2\u0006\u0010N\u001a\u00020MH\u0007J \u0010S\u001a\u00020\n2\u0006\u0010;\u001a\u00020:2\u0006\u0010Q\u001a\u00020P2\u0006\u0010R\u001a\u00020\u0004H\u0007J\u001e\u0010U\u001a\b\u0012\u0004\u0012\u00020\u00040T2\u0006\u0010;\u001a\u00020:2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0018\u0010W\u001a\u00020\n2\u0006\u0010;\u001a\u00020:2\u0006\u0010V\u001a\u00020\u0004H\u0007J\u0010\u0010W\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u0004H\u0007J \u0010W\u001a\u00020\n2\u0006\u0010;\u001a\u00020:2\u0006\u0010V\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0018\u0010W\u001a\u00020\n2\u0006\u0010V\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u0010\u0010Y\u001a\u00020\n2\u0006\u0010X\u001a\u00020\u0004H\u0007J\n\u0010Z\u001a\u0004\u0018\u00010\u0004H\u0007J\u0010\u0010]\u001a\u00020\n2\u0006\u0010\\\u001a\u00020[H\u0007J\n\u0010^\u001a\u0004\u0018\u00010[H\u0007J\u0010\u0010`\u001a\u00020\n2\u0006\u0010_\u001a\u00020\u0006H\u0007J\u0011\u0010a\u001a\u0004\u0018\u00010\u0006H\u0007¢\u0006\u0004\ba\u0010bJ\b\u0010c\u001a\u00020\u0004H\u0007J\n\u0010d\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010e\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010f\u001a\u0004\u0018\u00010\u0004H\u0007J\b\u0010h\u001a\u00020gH\u0007J\b\u0010j\u001a\u00020iH\u0007J\u0010\u0010l\u001a\u00020\n2\u0006\u0010k\u001a\u00020\fH\u0007J\b\u0010n\u001a\u00020mH\u0007J\u0010\u0010p\u001a\u00020\n2\u0006\u0010o\u001a\u00020mH\u0007J\u0018\u0010s\u001a\u00020\n2\u0006\u0010q\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\fH\u0007J\u0018\u0010s\u001a\u00020\n2\u0006\u0010q\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\u0006H\u0007J\u0018\u0010s\u001a\u00020\n2\u0006\u0010q\u001a\u00020\u00042\u0006\u0010r\u001a\u00020PH\u0007J\u0018\u0010s\u001a\u00020\n2\u0006\u0010q\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\u0004H\u0007J\u001a\u0010s\u001a\u00020\n2\u0006\u0010q\u001a\u00020\u00042\b\u0010r\u001a\u0004\u0018\u00010\u0001H\u0007J\u0016\u0010u\u001a\b\u0012\u0004\u0012\u00020t0T2\u0006\u0010+\u001a\u00020\u0006H\u0007J\b\u0010v\u001a\u00020\u0006H\u0007J\u001a\u0010w\u001a\u00020\f2\u0006\u0010\u0007\u001a\u00020\u00062\b\b\u0002\u0010-\u001a\u00020\u0004H\u0007J \u0010y\u001a\u0010\u0012\u0004\u0012\u00020P\u0012\u0006\u0012\u0004\u0018\u00010\u00040x2\b\b\u0002\u0010-\u001a\u00020\u0004H\u0007J\u0012\u0010{\u001a\u00020z2\b\b\u0002\u0010-\u001a\u00020\u0004H\u0007J\u001c\u0010~\u001a\u00020\n2\b\u0010|\u001a\u0004\u0018\u00010\u00042\b\u0010}\u001a\u0004\u0018\u00010\u0004H\u0007J&\u0010~\u001a\u00020\n2\b\u0010|\u001a\u0004\u0018\u00010\u00042\b\u0010}\u001a\u0004\u0018\u00010\u00042\b\u0010\u007f\u001a\u0004\u0018\u00010\u0004H\u0007J\u0012\u0010\u0080\u0001\u001a\u00020\n2\u0007\u0010\u0080\u0001\u001a\u00020\fH\u0007J\t\u0010\u0081\u0001\u001a\u00020\nH\u0007J\u0011\u0010\u0082\u0001\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u001b\u0010\u0083\u0001\u001a\u00020\n2\b\u0010r\u001a\u0004\u0018\u00010\fH\u0007¢\u0006\u0005\b\u0083\u0001\u0010\u0013J\u0011\u0010\u0084\u0001\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u0006H\u0007J\u001a\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\u0004H\u0007J\u001a\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\u0006H\u0007J\u001a\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010r\u001a\u00020PH\u0007J\u001a\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\u00042\u0006\u0010r\u001a\u00020\fH\u0007J\u001c\u0010\u0086\u0001\u001a\u00020\n2\u0007\u0010\u0085\u0001\u001a\u00020\u00042\b\u0010r\u001a\u0004\u0018\u00010\u0001H\u0007J\u0011\u0010\u0087\u0001\u001a\u00020P2\u0006\u0010\u0010\u001a\u00020\u0006H\u0007J,\u0010\u008b\u0001\u001a\u00020\n2\u0007\u0010\u0088\u0001\u001a\u00020\u00042\u0018\u0010\u008a\u0001\u001a\u0013\u0012\u0004\u0012\u00020\u0004\u0012\u0006\u0012\u0004\u0018\u00010\u0001\u0018\u00010\u0089\u0001H\u0007J&\u0010\u008f\u0001\u001a\u00020\n2\u0006\u0010;\u001a\u00020:2\b\u0010\u008d\u0001\u001a\u00030\u008c\u00012\t\u0010\t\u001a\u0005\u0018\u00010\u008e\u0001H\u0007R\u0017\u0010\u0090\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0090\u0001\u0010\u0091\u0001R\u0017\u0010\u0092\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0092\u0001\u0010\u0091\u0001R\u0017\u0010\u0093\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0093\u0001\u0010\u0091\u0001R\u0017\u0010\u0094\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0094\u0001\u0010\u0091\u0001R\u0017\u0010\u0095\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0095\u0001\u0010\u0091\u0001R\u0017\u0010\u0096\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0096\u0001\u0010\u0091\u0001R\u0017\u0010\u0097\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0097\u0001\u0010\u0091\u0001R\u0017\u0010\u0098\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0098\u0001\u0010\u0091\u0001R\u0017\u0010\u0099\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u0099\u0001\u0010\u0091\u0001R\u0017\u0010\u009a\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u009a\u0001\u0010\u0091\u0001R\u0017\u0010\u009b\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u009b\u0001\u0010\u0091\u0001R\u0017\u0010\u009c\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u009c\u0001\u0010\u0091\u0001R\u0017\u0010\u009d\u0001\u001a\u00020\u00068\u0006X\u0086T¢\u0006\b\n\u0006\b\u009d\u0001\u0010\u0091\u0001R\u001f\u0010\u009e\u0001\u001a\u00020\u00068\u0006X\u0087T¢\u0006\u0010\n\u0006\b\u009e\u0001\u0010\u0091\u0001\u0012\u0006\b\u009f\u0001\u0010 \u0001R!\u0010¤\u0001\u001a\u0004\u0018\u00010(8FX\u0087\u0004¢\u0006\u0010\u0012\u0006\b£\u0001\u0010 \u0001\u001a\u0006\b¡\u0001\u0010¢\u0001¨\u0006¥\u0001"}, d2 = {"Lcom/appodeal/ads/Appodeal;", "", "Landroid/app/Activity;", "activity", "", Constants.APP_KEY, "", "adTypes", "Lcom/appodeal/ads/initializing/ApdInitializationCallback;", "callback", "", MobileAdsBridgeBase.initializeMethodName, "", "hasConsent", "Lcom/appodeal/consent/Consent;", "consent", "adType", "isInitialized", "updateConsent", "(Ljava/lang/Boolean;)V", "Lcom/appodeal/ads/regulator/GDPRUserConsent;", "updateGDPRUserConsent", "Lcom/appodeal/ads/regulator/CCPAUserConsent;", "updateCCPAUserConsent", "isAutoCacheEnabled", "Lcom/appodeal/ads/AppodealRequestCallbacks;", "callbacks", "setRequestCallbacks", "Lcom/appodeal/ads/revenue/AdRevenueCallbacks;", "setAdRevenueCallbacks", "Lcom/appodeal/ads/InterstitialCallbacks;", "setInterstitialCallbacks", "Lcom/appodeal/ads/RewardedVideoCallbacks;", "setRewardedVideoCallbacks", "Lcom/appodeal/ads/BannerCallbacks;", "setBannerCallbacks", "Lcom/appodeal/ads/MrecCallbacks;", "setMrecCallbacks", "Lcom/appodeal/ads/NativeCallbacks;", "setNativeCallbacks", "Lcom/appodeal/ads/Native$NativeAdType;", "setNativeAdType", "cache", NewHtcHomeBadger.COUNT, Constants.SHOW, "placementName", "hide", "autoCache", "setAutoCache", "triggerOnLoadedOnPrecache", "setTriggerOnLoadedOnPrecache", "isSharedAdsInstanceAcrossActivities", "sharedAdsInstanceAcrossActivities", "setSharedAdsInstanceAcrossActivities", "isLoaded", "isPrecache", "bannerViewId", "setBannerViewId", "Landroid/content/Context;", "context", "Lcom/appodeal/ads/BannerView;", "getBannerView", "enabled", "setSmartBanners", "isSmartBannersEnabled", "set728x90Banners", "animate", "setBannerAnimation", "leftBannerRotation", "rightBannerRotation", "setBannerRotation", "useSafeArea", "setUseSafeArea", "mrecViewId", "setMrecViewId", "Lcom/appodeal/ads/MrecView;", "getMrecView", "Lcom/appodeal/ads/Native$MediaAssetType;", "requiredMediaAssetType", "setRequiredNativeMediaAssetType", "", AppLovinEventParameters.REVENUE_AMOUNT, "currency", "trackInAppPurchase", "", "getNetworks", "network", "disableNetwork", DataKeys.USER_ID, "setUserId", "getUserId", "Lcom/appodeal/ads/UserSettings$Gender;", "gender", "setUserGender", "getUserGender", IronSourceSegment.AGE, "setUserAge", "getUserAge", "()Ljava/lang/Integer;", MobileAdsBridge.versionMethodName, "getFrameworkName", "getPluginVersion", "getEngineVersion", "", "getSegmentId", "Ljava/util/Date;", "getBuildDate", "testMode", "setTesting", "Lcom/appodeal/ads/utils/Log$LogLevel;", "getLogLevel", "logLevel", "setLogLevel", "name", "value", "setCustomFilter", "Lcom/appodeal/ads/NativeAd;", "getNativeAds", "getAvailableNativeAdsCount", "canShow", "Landroid/util/Pair;", "getRewardParameters", "Lcom/appodeal/ads/rewarded/Reward;", "getReward", "frameworkName", "pluginVersion", "setFramework", "engineVersion", "muteVideosIfCallsMuted", "disableWebViewCacheClear", "startTestActivity", "setChildDirectedTreatment", "destroy", "key", "setExtraData", "getPredictedEcpm", "eventName", "", OutcomeEventsTable.COLUMN_NAME_PARAMS, "logEvent", "Lcom/appodeal/ads/inapp/InAppPurchase;", FirebaseAnalytics.Event.PURCHASE, "Lcom/appodeal/ads/inapp/InAppPurchaseValidateCallback;", "validateInAppPurchase", "NONE", "I", "INTERSTITIAL_INT", "SKIPPABLE_VIDEO", "INTERSTITIAL", "BANNER", "BANNER_BOTTOM", "BANNER_TOP", "BANNER_LEFT", "BANNER_RIGHT", "BANNER_VIEW", "REWARDED_VIDEO", "MREC", "NATIVE", com.appsgeyser.sdk.configuration.Constants.NATIVE_BANNER_MAIN_PLACEMENT_TAG, "getALL$annotations", "()V", "getNativeAdType", "()Lcom/appodeal/ads/Native$NativeAdType;", "getNativeAdType$annotations", "nativeAdType", "apd_core"}, k = 1, mv = {1, 6, 0})
/* loaded from: classes.dex */
public final class Appodeal {
    public static final int ALL = 4095;
    public static final int BANNER = 4;
    public static final int BANNER_BOTTOM = 8;
    public static final int BANNER_LEFT = 1024;
    public static final int BANNER_RIGHT = 2048;
    public static final int BANNER_TOP = 16;
    public static final int BANNER_VIEW = 64;
    public static final Appodeal INSTANCE = new Appodeal();
    public static final int INTERSTITIAL = 3;
    public static final int INTERSTITIAL_INT = 1;
    public static final int MREC = 256;
    public static final int NATIVE = 512;
    public static final int NONE = 0;
    public static final int REWARDED_VIDEO = 128;
    public static final int SKIPPABLE_VIDEO = 2;

    @JvmStatic
    public static final void cache(Activity activity, int i) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        q4.a(activity, i);
    }

    @JvmStatic
    public static final void cache(Activity activity, int i, int i2) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        q4.a(activity, i, i2);
    }

    @JvmStatic
    public static final boolean canShow(int i) {
        return canShow$default(i, null, 2, null);
    }

    @JvmStatic
    public static final boolean canShow(int i, String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return q4.a(i, placementName);
    }

    public static /* synthetic */ boolean canShow$default(int i, String str, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            str = RewardedVideo.VIDEO_MODE_DEFAULT;
        }
        return canShow(i, str);
    }

    @JvmStatic
    public static final void destroy(int i) {
        q4 q4Var = q4.f7303a;
        g1.K.a(null);
        if ((i & 3164) > 0) {
            try {
                t0.a c2 = t0.c();
                t0.b a2 = t0.a();
                c2.getClass();
                a2.a(LogConstants.EVENT_AD_DESTROY, (String) null);
                x5.d a3 = c2.a((Activity) null);
                a3.f7950a = null;
                a3.f7951b = f0.HIDDEN;
                if (c2.f7940c != null) {
                    h5.f6714a.post(new v5(c2, a2));
                }
                x5.a((z5) a2.f(), a2.f7689d);
                x5.a((z5) a2.y, a2.f7689d);
                a2.y = null;
                h5.f6714a.post(new w5(c2));
            } catch (Exception e2) {
                Log.log(e2);
                return;
            }
        }
        if ((i & 256) > 0) {
            h2.a c3 = h2.c();
            h2.b a4 = h2.a();
            c3.getClass();
            a4.a(LogConstants.EVENT_AD_DESTROY, (String) null);
            x5.d a5 = c3.a((Activity) null);
            a5.f7950a = null;
            a5.f7951b = f0.HIDDEN;
            if (c3.f7940c != null) {
                h5.f6714a.post(new v5(c3, a4));
            }
            x5.a((z5) a4.f(), a4.f7689d);
            x5.a((z5) a4.y, a4.f7689d);
            a4.y = null;
            h5.f6714a.post(new w5(c3));
        }
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void disableNetwork(Context context, String network) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(network, "network");
        q4.a(network);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "SdkCore.disableNetwork(network, adTypes)", imports = {}))
    @JvmStatic
    public static final void disableNetwork(Context context, String network, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(network, "network");
        q4.a(network, i);
    }

    @JvmStatic
    public static final void disableNetwork(String network) {
        Intrinsics.checkNotNullParameter(network, "network");
        q4.a(network);
    }

    @JvmStatic
    public static final void disableNetwork(String network, int i) {
        Intrinsics.checkNotNullParameter(network, "network");
        q4.a(network, i);
    }

    @JvmStatic
    public static final void disableWebViewCacheClear() {
        q4 q4Var = q4.f7303a;
        g1.H.a(null);
        r0 r0Var = r0.f7341a;
    }

    @Deprecated(message = "")
    public static /* synthetic */ void getALL$annotations() {
    }

    @JvmStatic
    public static final int getAvailableNativeAdsCount() {
        int size;
        q4 q4Var = q4.f7303a;
        Log.log(LogConstants.KEY_SDK_PUBLIC, LogConstants.EVENT_GET, "available Native Ads count");
        n2 c2 = Native.c();
        synchronized (c2.f7092d) {
            size = c2.f7092d.size();
        }
        return size;
    }

    @JvmStatic
    public static final BannerView getBannerView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return q4.a(context);
    }

    @JvmStatic
    public static final Date getBuildDate() {
        return q4.f();
    }

    @JvmStatic
    public static final String getEngineVersion() {
        return q4.i;
    }

    @JvmStatic
    public static final String getFrameworkName() {
        return q4.f7309g;
    }

    @JvmStatic
    public static final Log.LogLevel getLogLevel() {
        q4 q4Var = q4.f7303a;
        return r0.f7344d;
    }

    @JvmStatic
    public static final MrecView getMrecView(Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        return q4.b(context);
    }

    public static final Native.NativeAdType getNativeAdType() {
        q4 q4Var = q4.f7303a;
        return Native.f6382b;
    }

    @JvmStatic
    public static /* synthetic */ void getNativeAdType$annotations() {
    }

    @JvmStatic
    public static final List<NativeAd> getNativeAds(int i) {
        return new ArrayList(q4.a(i));
    }

    @JvmStatic
    public static final List<String> getNetworks(Context context, int i) {
        Intrinsics.checkNotNullParameter(context, "context");
        return new ArrayList(q4.a(context, i));
    }

    @JvmStatic
    public static final String getPluginVersion() {
        return q4.f7310h;
    }

    @JvmStatic
    public static final double getPredictedEcpm(int i) {
        return q4.b(i);
    }

    @JvmStatic
    public static final Reward getReward() {
        return getReward$default(null, 1, null);
    }

    @JvmStatic
    public static final Reward getReward(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return q4.b(placementName);
    }

    public static /* synthetic */ Reward getReward$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = RewardedVideo.VIDEO_MODE_DEFAULT;
        }
        return getReward(str);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "Appodeal.getReward(placementName)", imports = {}))
    @JvmStatic
    public static final Pair<Double, String> getRewardParameters() {
        return getRewardParameters$default(null, 1, null);
    }

    @Deprecated(message = "", replaceWith = @ReplaceWith(expression = "Appodeal.getReward(placementName)", imports = {}))
    @JvmStatic
    public static final Pair<Double, String> getRewardParameters(String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return q4.c(placementName);
    }

    public static /* synthetic */ Pair getRewardParameters$default(String str, int i, Object obj) {
        if ((i & 1) != 0) {
            str = RewardedVideo.VIDEO_MODE_DEFAULT;
        }
        return getRewardParameters(str);
    }

    @JvmStatic
    public static final long getSegmentId() {
        q4 q4Var = q4.f7303a;
        return com.appodeal.ads.segments.n.c().f7528a;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final Integer getUserAge() {
        q4 q4Var = q4.f7303a;
        return l5.a().f6847c;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final UserSettings.Gender getUserGender() {
        q4 q4Var = q4.f7303a;
        return l5.a().f6846b;
    }

    @JvmStatic
    public static final String getUserId() {
        q4 q4Var = q4.f7303a;
        return l5.a().f6845a;
    }

    @JvmStatic
    public static final String getVersion() {
        return q4.n();
    }

    @JvmStatic
    public static final void hide(Activity activity, int i) {
        q4.b(activity, i);
    }

    @Deprecated(message = "As of Appodeal SDK version 3.0, will be removed in a future release.")
    @JvmStatic
    public static final void initialize(Activity activity, String appKey, int i) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        q4.a(activity, appKey, i, x2.d(), x2.c(), (ApdInitializationCallback) null);
    }

    @JvmStatic
    public static final void initialize(Activity activity, String appKey, int i, ApdInitializationCallback apdInitializationCallback) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        q4.a(activity, appKey, i, x2.d(), x2.c(), apdInitializationCallback);
    }

    @Deprecated(message = "As of Appodeal SDK version 3.0, will be removed in a future release.")
    @JvmStatic
    public static final void initialize(Activity activity, String appKey, int i, Consent consent) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        Intrinsics.checkNotNullParameter(consent, "consent");
        q4.a(activity, appKey, i, consent, (Boolean) null, (ApdInitializationCallback) null);
    }

    @Deprecated(message = "As of Appodeal SDK version 3.0, will be removed in a future release.")
    @JvmStatic
    public static final void initialize(Activity activity, String appKey, int i, boolean z) {
        Intrinsics.checkNotNullParameter(appKey, "appKey");
        q4.a(activity, appKey, i, (Consent) null, Boolean.valueOf(z), (ApdInitializationCallback) null);
    }

    @JvmStatic
    public static final boolean isAutoCacheEnabled(int i) {
        return q4.c(i);
    }

    @JvmStatic
    public static final boolean isInitialized(int i) {
        return q4.d(i);
    }

    @JvmStatic
    public static final boolean isLoaded(int i) {
        return q4.e(i);
    }

    @JvmStatic
    public static final boolean isPrecache(int i) {
        return q4.f(i);
    }

    @JvmStatic
    public static final boolean isSharedAdsInstanceAcrossActivities() {
        q4 q4Var = q4.f7303a;
        return r0.l;
    }

    @JvmStatic
    public static final boolean isSmartBannersEnabled() {
        q4 q4Var = q4.f7303a;
        return t0.f7670b;
    }

    @JvmStatic
    public static final void logEvent(String eventName, Map<String, ? extends Object> map) {
        Intrinsics.checkNotNullParameter(eventName, "eventName");
        q4.a(eventName, map);
    }

    @JvmStatic
    public static final void muteVideosIfCallsMuted(boolean z) {
        q4.a(z);
    }

    @JvmStatic
    public static final void set728x90Banners(boolean z) {
        q4.b(z);
    }

    @JvmStatic
    public static final void setAdRevenueCallbacks(AdRevenueCallbacks adRevenueCallbacks) {
        q4 q4Var = q4.f7303a;
        g1.f6672d.a(null);
        q4.f7308f = adRevenueCallbacks;
    }

    @JvmStatic
    public static final void setAutoCache(int i, boolean z) {
        q4.a(i, z);
    }

    @JvmStatic
    public static final void setBannerAnimation(boolean z) {
        q4.c(z);
    }

    @JvmStatic
    public static final void setBannerCallbacks(BannerCallbacks bannerCallbacks) {
        q4.a(bannerCallbacks);
    }

    @JvmStatic
    public static final void setBannerRotation(int i, int i2) {
        q4 q4Var = q4.f7303a;
        g1.t.a("Banner rotations: left=" + i + ", right=" + i2);
        r0.f7348h = i;
        r0.i = i2;
    }

    @JvmStatic
    public static final void setBannerViewId(int i) {
        q4.g(i);
    }

    @JvmStatic
    public static final void setChildDirectedTreatment(Boolean bool) {
        q4 q4Var = q4.f7303a;
        g1.J.a(String.valueOf(bool));
        boolean a2 = i0.a();
        i0.f6734g = bool;
        if (a2 != i0.a()) {
            r0.d();
        }
    }

    @JvmStatic
    public static final void setCustomFilter(String name, double d2) {
        Intrinsics.checkNotNullParameter(name, "name");
        q4.a(name, Float.valueOf((float) d2));
    }

    @JvmStatic
    public static final void setCustomFilter(String name, int i) {
        Intrinsics.checkNotNullParameter(name, "name");
        q4.a(name, Float.valueOf(i));
    }

    @JvmStatic
    public static final void setCustomFilter(String name, Object obj) {
        Intrinsics.checkNotNullParameter(name, "name");
        q4.a(name, obj);
    }

    @JvmStatic
    public static final void setCustomFilter(String name, String value) {
        Intrinsics.checkNotNullParameter(name, "name");
        Intrinsics.checkNotNullParameter(value, "value");
        q4.a(name, value);
    }

    @JvmStatic
    public static final void setCustomFilter(String name, boolean z) {
        Intrinsics.checkNotNullParameter(name, "name");
        q4.a(name, Boolean.valueOf(z));
    }

    @JvmStatic
    public static final void setExtraData(String key, double d2) {
        Intrinsics.checkNotNullParameter(key, "key");
        q4.b(key, Double.valueOf(d2));
    }

    @JvmStatic
    public static final void setExtraData(String key, int i) {
        Intrinsics.checkNotNullParameter(key, "key");
        q4.b(key, Integer.valueOf(i));
    }

    @JvmStatic
    public static final void setExtraData(String key, Object obj) {
        Intrinsics.checkNotNullParameter(key, "key");
        q4.b(key, obj);
    }

    @JvmStatic
    public static final void setExtraData(String key, String value) {
        Intrinsics.checkNotNullParameter(key, "key");
        Intrinsics.checkNotNullParameter(value, "value");
        q4.b(key, value);
    }

    @JvmStatic
    public static final void setExtraData(String key, boolean z) {
        Intrinsics.checkNotNullParameter(key, "key");
        q4.b(key, Boolean.valueOf(z));
    }

    @JvmStatic
    public static final void setFramework(String str, String str2) {
        q4.a(str, str2, (String) null);
    }

    @JvmStatic
    public static final void setFramework(String str, String str2, String str3) {
        q4.a(str, str2, str3);
    }

    @JvmStatic
    public static final void setInterstitialCallbacks(InterstitialCallbacks interstitialCallbacks) {
        q4.a(interstitialCallbacks);
    }

    @JvmStatic
    public static final void setLogLevel(Log.LogLevel logLevel) {
        Intrinsics.checkNotNullParameter(logLevel, "logLevel");
        q4.a(logLevel);
    }

    @JvmStatic
    public static final void setMrecCallbacks(MrecCallbacks mrecCallbacks) {
        q4.a(mrecCallbacks);
    }

    @JvmStatic
    public static final void setMrecViewId(int i) {
        q4.h(i);
    }

    @JvmStatic
    public static final void setNativeAdType(Native.NativeAdType adType) {
        Intrinsics.checkNotNullParameter(adType, "adType");
        q4.a(adType);
    }

    @JvmStatic
    public static final void setNativeCallbacks(NativeCallbacks nativeCallbacks) {
        q4.a(nativeCallbacks);
    }

    @JvmStatic
    public static final void setRequestCallbacks(AppodealRequestCallbacks appodealRequestCallbacks) {
        q4 q4Var = q4.f7303a;
        g1.f6671c.a(null);
        q4.k().f7058d = appodealRequestCallbacks;
    }

    @JvmStatic
    public static final void setRequiredNativeMediaAssetType(Native.MediaAssetType requiredMediaAssetType) {
        Intrinsics.checkNotNullParameter(requiredMediaAssetType, "requiredMediaAssetType");
        q4.a(requiredMediaAssetType);
    }

    @JvmStatic
    public static final void setRewardedVideoCallbacks(RewardedVideoCallbacks rewardedVideoCallbacks) {
        q4.a(rewardedVideoCallbacks);
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void setSharedAdsInstanceAcrossActivities(boolean z) {
        q4.d(z);
    }

    @JvmStatic
    public static final void setSmartBanners(boolean z) {
        q4.e(z);
    }

    @JvmStatic
    public static final void setTesting(boolean z) {
        q4.f(z);
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void setTriggerOnLoadedOnPrecache(int i, boolean z) {
        q4.b(i, z);
    }

    @JvmStatic
    public static final void setUseSafeArea(boolean z) {
        r0 r0Var = r0.f7341a;
        r0.m = z;
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void setUserAge(int i) {
        q4 q4Var = q4.f7303a;
        g1.A.a(null);
        l5.a().setAge(i);
    }

    @Deprecated(message = "")
    @JvmStatic
    public static final void setUserGender(UserSettings.Gender gender) {
        Intrinsics.checkNotNullParameter(gender, "gender");
        q4.a(gender);
    }

    @JvmStatic
    public static final void setUserId(String userId) {
        Intrinsics.checkNotNullParameter(userId, "userId");
        q4.d(userId);
    }

    @JvmStatic
    public static final boolean show(Activity activity, int i) {
        return q4.a(activity, i, RewardedVideo.VIDEO_MODE_DEFAULT);
    }

    @JvmStatic
    public static final boolean show(Activity activity, int i, String placementName) {
        Intrinsics.checkNotNullParameter(placementName, "placementName");
        return q4.a(activity, i, placementName);
    }

    @JvmStatic
    public static final void startTestActivity(Activity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        q4.a(activity);
    }

    @JvmStatic
    public static final void trackInAppPurchase(Context context, double d2, String currency) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(currency, "currency");
        q4.a(context, d2, currency);
    }

    @JvmStatic
    public static final void updateCCPAUserConsent(CCPAUserConsent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        q4.a(consent);
    }

    @JvmStatic
    public static final void updateConsent(Consent consent) {
        q4.a(consent);
    }

    @Deprecated(message = "As of Appodeal SDK version 3.0, will be removed in a future release.")
    @JvmStatic
    public static final void updateConsent(Boolean bool) {
        q4.a(bool);
    }

    @JvmStatic
    public static final void updateGDPRUserConsent(GDPRUserConsent consent) {
        Intrinsics.checkNotNullParameter(consent, "consent");
        q4.a(consent);
    }

    @JvmStatic
    public static final void validateInAppPurchase(Context context, InAppPurchase purchase, InAppPurchaseValidateCallback inAppPurchaseValidateCallback) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(purchase, "purchase");
        q4.a(context, purchase, inAppPurchaseValidateCallback);
    }
}
