package com.onesignal;

import android.app.Activity;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.os.Build;
import androidx.core.app.NotificationManagerCompat;
import com.onesignal.OneSignal;
import com.onesignal.OneSignalDbContract;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3.dex */
class NotificationOpenedProcessor {
    private static final String TAG = "com.onesignal.NotificationOpenedProcessor";

    NotificationOpenedProcessor() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void processFromContext(Context context, Intent intent) {
        if (isOneSignalIntent(intent)) {
            if (context != null) {
                OneSignal.initWithContext(context.getApplicationContext());
            }
            handleDismissFromActionButtonPress(context, intent);
            processIntent(context, intent);
        }
    }

    private static boolean isOneSignalIntent(Intent intent) {
        return intent.hasExtra(GenerateNotification.BUNDLE_KEY_ONESIGNAL_DATA) || intent.hasExtra("summary") || intent.hasExtra(GenerateNotification.BUNDLE_KEY_ANDROID_NOTIFICATION_ID);
    }

    private static void handleDismissFromActionButtonPress(Context context, Intent intent) {
        if (intent.getBooleanExtra("action_button", false)) {
            NotificationManagerCompat.from(context).cancel(intent.getIntExtra(GenerateNotification.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0));
            if (Build.VERSION.SDK_INT < 31) {
                context.sendBroadcast(new Intent("android.intent.action.CLOSE_SYSTEM_DIALOGS"));
            }
        }
    }

    static void processIntent(Context context, Intent intent) {
        OSNotificationIntentExtras oSNotificationIntentExtras;
        String stringExtra;
        OneSignalDbHelper oneSignalDbHelper = OneSignalDbHelper.getInstance(context);
        String stringExtra2 = intent.getStringExtra("summary");
        boolean booleanExtra = intent.getBooleanExtra(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, false);
        if (booleanExtra) {
            oSNotificationIntentExtras = null;
        } else {
            oSNotificationIntentExtras = processToOpenIntent(context, intent, oneSignalDbHelper, stringExtra2);
            if (oSNotificationIntentExtras == null) {
                return;
            }
        }
        markNotificationsConsumed(context, intent, oneSignalDbHelper, booleanExtra);
        if (stringExtra2 == null && (stringExtra = intent.getStringExtra("grp")) != null) {
            NotificationSummaryManager.updateSummaryNotificationAfterChildRemoved(context, oneSignalDbHelper, stringExtra, booleanExtra);
        }
        OneSignal.onesignalLog(OneSignal.LOG_LEVEL.DEBUG, "processIntent from context: " + context + " and intent: " + intent);
        if (intent.getExtras() != null) {
            OneSignal.onesignalLog(OneSignal.LOG_LEVEL.DEBUG, "processIntent intent extras: " + intent.getExtras().toString());
        }
        if (booleanExtra) {
            return;
        }
        if (!(context instanceof Activity)) {
            OneSignal.onesignalLog(OneSignal.LOG_LEVEL.ERROR, "NotificationOpenedProcessor processIntent from an non Activity context: " + context);
        } else {
            OneSignal.handleNotificationOpen((Activity) context, oSNotificationIntentExtras.getDataArray(), OSNotificationFormatHelper.getOSNotificationIdFromJson(oSNotificationIntentExtras.getJsonData()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static com.onesignal.OSNotificationIntentExtras processToOpenIntent(android.content.Context r7, android.content.Intent r8, com.onesignal.OneSignalDbHelper r9, java.lang.String r10) {
        /*
            java.lang.String r0 = "androidNotificationId"
            java.lang.String r1 = "onesignalData"
            java.lang.String r2 = "NotificationOpenedProcessor processIntent from an non Activity context: "
            r3 = 0
            org.json.JSONObject r4 = new org.json.JSONObject     // Catch: org.json.JSONException -> L4f
            java.lang.String r5 = r8.getStringExtra(r1)     // Catch: org.json.JSONException -> L4f
            r4.<init>(r5)     // Catch: org.json.JSONException -> L4f
            boolean r5 = r7 instanceof android.app.Activity     // Catch: org.json.JSONException -> L4d
            if (r5 != 0) goto L27
            com.onesignal.OneSignal$LOG_LEVEL r5 = com.onesignal.OneSignal.LOG_LEVEL.ERROR     // Catch: org.json.JSONException -> L4d
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: org.json.JSONException -> L4d
            r6.<init>(r2)     // Catch: org.json.JSONException -> L4d
            java.lang.StringBuilder r7 = r6.append(r7)     // Catch: org.json.JSONException -> L4d
            java.lang.String r7 = r7.toString()     // Catch: org.json.JSONException -> L4d
            com.onesignal.OneSignal.onesignalLog(r5, r7)     // Catch: org.json.JSONException -> L4d
            goto L30
        L27:
            android.app.Activity r7 = (android.app.Activity) r7     // Catch: org.json.JSONException -> L4d
            boolean r7 = com.onesignal.OSInAppMessagePreviewHandler.notificationOpened(r7, r4)     // Catch: org.json.JSONException -> L4d
            if (r7 == 0) goto L30
            return r3
        L30:
            r7 = 0
            int r7 = r8.getIntExtra(r0, r7)     // Catch: org.json.JSONException -> L4d
            r4.put(r0, r7)     // Catch: org.json.JSONException -> L4d
            java.lang.String r7 = r4.toString()     // Catch: org.json.JSONException -> L4d
            r8.putExtra(r1, r7)     // Catch: org.json.JSONException -> L4d
            org.json.JSONObject r7 = new org.json.JSONObject     // Catch: org.json.JSONException -> L4d
            java.lang.String r8 = r8.getStringExtra(r1)     // Catch: org.json.JSONException -> L4d
            r7.<init>(r8)     // Catch: org.json.JSONException -> L4d
            org.json.JSONArray r3 = com.onesignal.NotificationBundleProcessor.newJsonArray(r7)     // Catch: org.json.JSONException -> L4d
            goto L54
        L4d:
            r7 = move-exception
            goto L51
        L4f:
            r7 = move-exception
            r4 = r3
        L51:
            r7.printStackTrace()
        L54:
            if (r10 == 0) goto L59
            addChildNotifications(r3, r10, r9)
        L59:
            com.onesignal.OSNotificationIntentExtras r7 = new com.onesignal.OSNotificationIntentExtras
            r7.<init>(r3, r4)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.NotificationOpenedProcessor.processToOpenIntent(android.content.Context, android.content.Intent, com.onesignal.OneSignalDbHelper, java.lang.String):com.onesignal.OSNotificationIntentExtras");
    }

    private static void addChildNotifications(JSONArray jSONArray, String str, OneSignalDbHelper oneSignalDbHelper) {
        Cursor query = oneSignalDbHelper.query(OneSignalDbContract.NotificationTable.TABLE_NAME, new String[]{OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA}, "group_id = ? AND dismissed = 0 AND opened = 0 AND is_summary = 0", new String[]{str}, null, null, null);
        if (query.getCount() > 1) {
            query.moveToFirst();
            do {
                try {
                    jSONArray.put(new JSONObject(query.getString(query.getColumnIndex(OneSignalDbContract.NotificationTable.COLUMN_NAME_FULL_DATA))));
                } catch (JSONException unused) {
                    OneSignal.Log(OneSignal.LOG_LEVEL.ERROR, "Could not parse JSON of sub notification in group: " + str);
                }
            } while (query.moveToNext());
            query.close();
        }
        query.close();
    }

    private static void markNotificationsConsumed(Context context, Intent intent, OneSignalDbHelper oneSignalDbHelper, boolean z) {
        String str;
        String stringExtra = intent.getStringExtra("summary");
        String[] strArr = null;
        if (stringExtra != null) {
            boolean equals = stringExtra.equals(OneSignalNotificationManager.getGrouplessSummaryKey());
            if (equals) {
                str = "group_id IS NULL";
            } else {
                strArr = new String[]{stringExtra};
                str = "group_id = ?";
            }
            if (!z && !OneSignal.getClearGroupSummaryClick()) {
                String valueOf = String.valueOf(OneSignalNotificationManager.getMostRecentNotifIdFromGroup(oneSignalDbHelper, stringExtra, equals));
                str = str.concat(" AND android_notification_id = ?");
                strArr = equals ? new String[]{valueOf} : new String[]{stringExtra, valueOf};
            }
        } else {
            str = "android_notification_id = " + intent.getIntExtra(GenerateNotification.BUNDLE_KEY_ANDROID_NOTIFICATION_ID, 0);
        }
        clearStatusBarNotifications(context, oneSignalDbHelper, stringExtra);
        oneSignalDbHelper.update(OneSignalDbContract.NotificationTable.TABLE_NAME, newContentValuesWithConsumed(intent), str, strArr);
        BadgeCountUpdater.update(oneSignalDbHelper, context);
    }

    private static void clearStatusBarNotifications(Context context, OneSignalDbHelper oneSignalDbHelper, String str) {
        if (str != null) {
            NotificationSummaryManager.clearNotificationOnSummaryClick(context, oneSignalDbHelper, str);
        } else if (OneSignalNotificationManager.getGrouplessNotifsCount(context).intValue() < 1) {
            OneSignalNotificationManager.getNotificationManager(context).cancel(OneSignalNotificationManager.getGrouplessSummaryId());
        }
    }

    private static ContentValues newContentValuesWithConsumed(Intent intent) {
        ContentValues contentValues = new ContentValues();
        if (intent.getBooleanExtra(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, false)) {
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_DISMISSED, (Integer) 1);
        } else {
            contentValues.put(OneSignalDbContract.NotificationTable.COLUMN_NAME_OPENED, (Integer) 1);
        }
        return contentValues;
    }
}
