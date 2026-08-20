package io.bidmachine;

import android.text.TextUtils;
import io.bidmachine.ApiRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.NetworkRequest;
import io.bidmachine.utils.BMError;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes5.dex */
public abstract class SessionTracker {
    static final /* synthetic */ boolean $assertionsDisabled = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clearTrackers(TrackingObject trackingObject);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void clearTrackingEvent(TrackingObject trackingObject, TrackEventType trackEventType);

    abstract int getEventCount(AdsType adsType, TrackEventType trackEventType);

    abstract int getTotalEventCount(TrackEventType trackEventType);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void trackEventFinish(TrackingObject trackingObject, TrackEventType trackEventType, AdsType adsType, BMError bMError, Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void trackEventStart(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void notifyTrack(TrackingObject trackingObject, TrackEventType trackEventType, TrackEventInfo trackEventInfo, BMError bMError, Map<String, Object> map) {
        if (bMError != null) {
            notifyError(collectTrackingUrls(trackingObject, TrackEventType.Error), collectTrackingUrls(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType.getOrtbActionValue(), bMError);
        } else {
            notifyTrack(collectTrackingUrls(trackingObject, trackEventType), collectTrackingUrls(trackingObject, TrackEventType.TrackingError), trackEventInfo, trackEventType, map);
        }
    }

    private static List<String> collectTrackingUrls(TrackingObject trackingObject, TrackEventType trackEventType) {
        List<String> trackingUrls = BidMachineImpl.get().getTrackingUrls(trackEventType);
        ArrayList arrayList = trackingUrls != null ? new ArrayList(trackingUrls) : null;
        List<String> trackingUrls2 = trackingObject.getTrackingUrls(trackEventType);
        if (trackingUrls2 != null) {
            if (arrayList == null) {
                return new ArrayList(trackingUrls2);
            }
            arrayList.addAll(trackingUrls2);
            return arrayList;
        }
        return arrayList;
    }

    private static void notifyTrack(List<String> list, final List<String> list2, final TrackEventInfo trackEventInfo, final TrackEventType trackEventType, Map<String, Object> map) {
        if (list == null) {
            return;
        }
        Logger.log(String.format("Dispatching event to server - %s", trackEventType));
        for (String str : list) {
            executeNotify(replaceMacros(str, trackEventInfo, trackEventType.getOrtbActionValue(), -1, map), new NetworkRequest.Callback<String, BMError>() { // from class: io.bidmachine.SessionTracker.1
                @Override // io.bidmachine.core.NetworkRequest.Callback
                public void onSuccess(String str2) {
                }

                @Override // io.bidmachine.core.NetworkRequest.Callback
                public void onFail(BMError bMError) {
                    if (bMError == null) {
                        bMError = BMError.internal("Failed to track URL");
                    }
                    SessionTracker.notifyTrackingError(list2, trackEventInfo, trackEventType.getOrtbActionValue(), bMError);
                }
            });
        }
    }

    private static void notifyError(List<String> list, final List<String> list2, final TrackEventInfo trackEventInfo, int i, BMError bMError) {
        if (list == null || bMError.getCode() == -1 || !bMError.isTrackError()) {
            return;
        }
        Logger.log(String.format("Dispatching error event to server - (%s-%s) - %s", Integer.valueOf(i), Integer.valueOf(bMError.getCode()), bMError.getMessage()));
        for (String str : list) {
            executeNotify(replaceMacros(str, trackEventInfo, i, bMError.getCode(), null), new NetworkRequest.Callback<String, BMError>() { // from class: io.bidmachine.SessionTracker.2
                @Override // io.bidmachine.core.NetworkRequest.Callback
                public void onSuccess(String str2) {
                }

                @Override // io.bidmachine.core.NetworkRequest.Callback
                public void onFail(BMError bMError2) {
                    if (bMError2 == null) {
                        bMError2 = BMError.internal("Failed to track URL");
                    }
                    SessionTracker.notifyTrackingError(list2, trackEventInfo, TrackEventType.Error.getOrtbActionValue(), bMError2);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void notifyTrackingError(List<String> list, TrackEventInfo trackEventInfo, int i, BMError bMError) {
        if (list == null || bMError.getCode() == -1 || !bMError.isTrackError()) {
            return;
        }
        Logger.log(String.format("Dispatching tracking fail to server - %s", bMError));
        for (String str : list) {
            executeNotify(replaceMacros(str, trackEventInfo, i, bMError.getCode(), null), null);
        }
    }

    static String replaceMacros(String str, TrackEventInfo trackEventInfo, int i, int i2, Map<String, Object> map) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        String replaceMacros = replaceMacros(replaceMacros(replaceMacros(replaceMacros(str, Constants.URL_MACROS_BM_EVENT_CODE, Integer.valueOf(i)), Constants.URL_MACROS_BM_ACTION_CODE, Integer.valueOf(i)), Constants.URL_MACROS_BM_ERROR_REASON, Integer.valueOf(i2)), map);
        return trackEventInfo != null ? replaceMacros(replaceMacros(replaceMacros(replaceMacros, Constants.URL_MACROS_BM_ACTION_START, Long.valueOf(trackEventInfo.startTimeMs)), Constants.URL_MACROS_BM_ACTION_FINISH, Long.valueOf(trackEventInfo.finishTimeMs)), trackEventInfo.getEventParameters()) : replaceMacros;
    }

    private static String replaceMacros(String str, Map<String, Object> map) {
        if (map != null) {
            for (Map.Entry<String, Object> entry : map.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (!TextUtils.isEmpty(key) && value != null) {
                    str = replaceMacros(str, key, value);
                }
            }
        }
        return str;
    }

    private static String replaceMacros(String str, String str2, Object obj) {
        return str.replace("${" + str2 + "}", String.valueOf(obj)).replace("%24%7B" + str2 + "%7D", String.valueOf(obj));
    }

    private static void executeNotify(String str, NetworkRequest.Callback<String, BMError> callback) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        new ApiRequest.Builder().url(str).setMethod(NetworkRequest.Method.Get).setDataBinder(new ApiRequest.ApiTrackerDataBinder()).setCallback(callback).request();
    }
}
