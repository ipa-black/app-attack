package com.onesignal;

import android.content.ContentValues;
import com.facebook.ads.AdSDKNotificationListener;
import com.onesignal.OneSignal;
import com.onesignal.OneSignalDbContract;
import com.onesignal.OneSignalRestClient;
import com.onesignal.outcomes.OSOutcomeConstants;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class OSInAppMessageRepository {
    static final long IAM_CACHE_DATA_LIFETIME = 15552000;
    static final String IAM_DATA_RESPONSE_RETRY_KEY = "retry";
    private final OneSignalDbHelper dbHelper;
    private int htmlNetworkRequestAttemptCount = 0;
    private final OSLogger logger;
    private final OSSharedPreferences sharedPreferences;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public interface OSInAppMessageRequestResponse {
        void onFailure(String str);

        void onSuccess(String str);
    }

    static /* synthetic */ int access$408(OSInAppMessageRepository oSInAppMessageRepository) {
        int i = oSInAppMessageRepository.htmlNetworkRequestAttemptCount;
        oSInAppMessageRepository.htmlNetworkRequestAttemptCount = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public OSInAppMessageRepository(OneSignalDbHelper oneSignalDbHelper, OSLogger oSLogger, OSSharedPreferences oSSharedPreferences) {
        this.dbHelper = oneSignalDbHelper;
        this.logger = oSLogger;
        this.sharedPreferences = oSSharedPreferences;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendIAMClick(String str, String str2, String str3, int i, String str4, String str5, boolean z, final Set<String> set, final OSInAppMessageRequestResponse oSInAppMessageRequestResponse) {
        try {
            OneSignalRestClient.post("in_app_messages/" + str4 + "/click", new JSONObject(str, i, str2, str5, str3, z) { // from class: com.onesignal.OSInAppMessageRepository.1
                final /* synthetic */ String val$appId;
                final /* synthetic */ String val$clickId;
                final /* synthetic */ int val$deviceType;
                final /* synthetic */ boolean val$isFirstClick;
                final /* synthetic */ String val$userId;
                final /* synthetic */ String val$variantId;

                {
                    this.val$appId = str;
                    this.val$deviceType = i;
                    this.val$userId = str2;
                    this.val$clickId = str5;
                    this.val$variantId = str3;
                    this.val$isFirstClick = z;
                    put(OSOutcomeConstants.APP_ID, str);
                    put(OSOutcomeConstants.DEVICE_TYPE, i);
                    put("player_id", str2);
                    put("click_id", str5);
                    put("variant_id", str3);
                    if (z) {
                        put("first_click", true);
                    }
                }
            }, new OneSignalRestClient.ResponseHandler() { // from class: com.onesignal.OSInAppMessageRepository.2
                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onSuccess(String str6) {
                    OSInAppMessageRepository.this.printHttpSuccessForInAppMessageRequest("engagement", str6);
                    OSInAppMessageRepository.this.saveClickedMessagesId(set);
                }

                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onFailure(int i2, String str6, Throwable th) {
                    OSInAppMessageRepository.this.printHttpErrorForInAppMessageRequest("engagement", i2, str6);
                    oSInAppMessageRequestResponse.onFailure(str6);
                }
            });
        } catch (JSONException e2) {
            e2.printStackTrace();
            this.logger.error("Unable to execute in-app message action HTTP request due to invalid JSON");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendIAMPageImpression(String str, String str2, String str3, int i, String str4, String str5, final Set<String> set, final OSInAppMessageRequestResponse oSInAppMessageRequestResponse) {
        try {
            OneSignalRestClient.post("in_app_messages/" + str4 + "/pageImpression", new JSONObject(str, str2, str3, i, str5) { // from class: com.onesignal.OSInAppMessageRepository.3
                final /* synthetic */ String val$appId;
                final /* synthetic */ int val$deviceType;
                final /* synthetic */ String val$pageId;
                final /* synthetic */ String val$userId;
                final /* synthetic */ String val$variantId;

                {
                    this.val$appId = str;
                    this.val$userId = str2;
                    this.val$variantId = str3;
                    this.val$deviceType = i;
                    this.val$pageId = str5;
                    put(OSOutcomeConstants.APP_ID, str);
                    put("player_id", str2);
                    put("variant_id", str3);
                    put(OSOutcomeConstants.DEVICE_TYPE, i);
                    put("page_id", str5);
                }
            }, new OneSignalRestClient.ResponseHandler() { // from class: com.onesignal.OSInAppMessageRepository.4
                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onSuccess(String str6) {
                    OSInAppMessageRepository.this.printHttpSuccessForInAppMessageRequest("page impression", str6);
                    OSInAppMessageRepository.this.saveViewPageImpressionedIds(set);
                }

                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onFailure(int i2, String str6, Throwable th) {
                    OSInAppMessageRepository.this.printHttpErrorForInAppMessageRequest("page impression", i2, str6);
                    oSInAppMessageRequestResponse.onFailure(str6);
                }
            });
        } catch (JSONException e2) {
            e2.printStackTrace();
            this.logger.error("Unable to execute in-app message impression HTTP request due to invalid JSON");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void sendIAMImpression(String str, String str2, String str3, int i, String str4, final Set<String> set, final OSInAppMessageRequestResponse oSInAppMessageRequestResponse) {
        try {
            OneSignalRestClient.post("in_app_messages/" + str4 + "/impression", new JSONObject(str, str2, str3, i) { // from class: com.onesignal.OSInAppMessageRepository.5
                final /* synthetic */ String val$appId;
                final /* synthetic */ int val$deviceType;
                final /* synthetic */ String val$userId;
                final /* synthetic */ String val$variantId;

                {
                    this.val$appId = str;
                    this.val$userId = str2;
                    this.val$variantId = str3;
                    this.val$deviceType = i;
                    put(OSOutcomeConstants.APP_ID, str);
                    put("player_id", str2);
                    put("variant_id", str3);
                    put(OSOutcomeConstants.DEVICE_TYPE, i);
                    put("first_impression", true);
                }
            }, new OneSignalRestClient.ResponseHandler() { // from class: com.onesignal.OSInAppMessageRepository.6
                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onSuccess(String str5) {
                    OSInAppMessageRepository.this.printHttpSuccessForInAppMessageRequest(AdSDKNotificationListener.IMPRESSION_EVENT, str5);
                    OSInAppMessageRepository.this.saveImpressionedMessages(set);
                }

                @Override // com.onesignal.OneSignalRestClient.ResponseHandler
                void onFailure(int i2, String str5, Throwable th) {
                    OSInAppMessageRepository.this.printHttpErrorForInAppMessageRequest(AdSDKNotificationListener.IMPRESSION_EVENT, i2, str5);
                    oSInAppMessageRequestResponse.onFailure(str5);
                }
            });
        } catch (JSONException e2) {
            e2.printStackTrace();
            this.logger.error("Unable to execute in-app message impression HTTP request due to invalid JSON");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getIAMPreviewData(String str, String str2, final OSInAppMessageRequestResponse oSInAppMessageRequestResponse) {
        OneSignalRestClient.get("in_app_messages/device_preview?preview_id=" + str2 + "&app_id=" + str, new OneSignalRestClient.ResponseHandler() { // from class: com.onesignal.OSInAppMessageRepository.7
            @Override // com.onesignal.OneSignalRestClient.ResponseHandler
            void onFailure(int i, String str3, Throwable th) {
                OSInAppMessageRepository.this.printHttpErrorForInAppMessageRequest(OSInAppMessageContentKt.HTML, i, str3);
                oSInAppMessageRequestResponse.onFailure(str3);
            }

            @Override // com.onesignal.OneSignalRestClient.ResponseHandler
            void onSuccess(String str3) {
                oSInAppMessageRequestResponse.onSuccess(str3);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void getIAMData(String str, String str2, String str3, final OSInAppMessageRequestResponse oSInAppMessageRequestResponse) {
        OneSignalRestClient.get(htmlPathForMessage(str2, str3, str), new OneSignalRestClient.ResponseHandler() { // from class: com.onesignal.OSInAppMessageRepository.8
            @Override // com.onesignal.OneSignalRestClient.ResponseHandler
            void onFailure(int i, String str4, Throwable th) {
                OSInAppMessageRepository.this.printHttpErrorForInAppMessageRequest(OSInAppMessageContentKt.HTML, i, str4);
                JSONObject jSONObject = new JSONObject();
                if (!OSUtils.shouldRetryNetworkRequest(i) || OSInAppMessageRepository.this.htmlNetworkRequestAttemptCount >= OSUtils.MAX_NETWORK_REQUEST_ATTEMPT_COUNT) {
                    OSInAppMessageRepository.this.htmlNetworkRequestAttemptCount = 0;
                    try {
                        jSONObject.put(OSInAppMessageRepository.IAM_DATA_RESPONSE_RETRY_KEY, false);
                    } catch (JSONException e2) {
                        e2.printStackTrace();
                    }
                } else {
                    OSInAppMessageRepository.access$408(OSInAppMessageRepository.this);
                    try {
                        jSONObject.put(OSInAppMessageRepository.IAM_DATA_RESPONSE_RETRY_KEY, true);
                    } catch (JSONException e3) {
                        e3.printStackTrace();
                    }
                }
                oSInAppMessageRequestResponse.onFailure(jSONObject.toString());
            }

            @Override // com.onesignal.OneSignalRestClient.ResponseHandler
            void onSuccess(String str4) {
                OSInAppMessageRepository.this.htmlNetworkRequestAttemptCount = 0;
                oSInAppMessageRequestResponse.onSuccess(str4);
            }
        }, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public synchronized void saveInAppMessage(OSInAppMessageInternal oSInAppMessageInternal) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("message_id", oSInAppMessageInternal.messageId);
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_DISPLAY_QUANTITY, Integer.valueOf(oSInAppMessageInternal.getRedisplayStats().getDisplayQuantity()));
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_NAME_LAST_DISPLAY, Long.valueOf(oSInAppMessageInternal.getRedisplayStats().getLastDisplayTime()));
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_CLICK_IDS, oSInAppMessageInternal.getClickedClickIds().toString());
        contentValues.put(OneSignalDbContract.InAppMessageTable.COLUMN_DISPLAYED_IN_SESSION, Boolean.valueOf(oSInAppMessageInternal.isDisplayedInSession()));
        if (this.dbHelper.update(OneSignalDbContract.InAppMessageTable.TABLE_NAME, contentValues, "message_id = ?", new String[]{oSInAppMessageInternal.messageId}) == 0) {
            this.dbHelper.insert(OneSignalDbContract.InAppMessageTable.TABLE_NAME, null, contentValues);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0074, code lost:
        if (r1.isClosed() == false) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0076, code lost:
        r1.close();
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008a, code lost:
        if (r1.isClosed() == false) goto L19;
     */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0070 A[Catch: all -> 0x009b, TRY_ENTER, TryCatch #2 {, blocks: (B:3:0x0001, B:14:0x0070, B:16:0x0076, B:23:0x0086, B:5:0x0007, B:7:0x001b, B:11:0x0052, B:21:0x007d), top: B:38:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized java.util.List<com.onesignal.OSInAppMessageInternal> getCachedInAppMessages() {
        /*
            r10 = this;
            monitor-enter(r10)
            java.util.ArrayList r0 = new java.util.ArrayList     // Catch: java.lang.Throwable -> L9b
            r0.<init>()     // Catch: java.lang.Throwable -> L9b
            r1 = 0
            com.onesignal.OneSignalDbHelper r2 = r10.dbHelper     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r3 = "in_app_message"
            r8 = 0
            r9 = 0
            r4 = 0
            r5 = 0
            r6 = 0
            r7 = 0
            android.database.Cursor r1 = r2.query(r3, r4, r5, r6, r7, r8, r9)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            boolean r2 = r1.moveToFirst()     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            if (r2 == 0) goto L6e
        L1b:
            java.lang.String r2 = "message_id"
            int r2 = r1.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r2 = r1.getString(r2)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r3 = "click_ids"
            int r3 = r1.getColumnIndex(r3)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r3 = r1.getString(r3)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r4 = "display_quantity"
            int r4 = r1.getColumnIndex(r4)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            int r4 = r1.getInt(r4)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r5 = "last_display"
            int r5 = r1.getColumnIndex(r5)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            long r5 = r1.getLong(r5)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.lang.String r7 = "displayed_in_session"
            int r7 = r1.getColumnIndex(r7)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            int r7 = r1.getInt(r7)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            r8 = 1
            if (r7 != r8) goto L51
            goto L52
        L51:
            r8 = 0
        L52:
            org.json.JSONArray r7 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            r7.<init>(r3)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            java.util.Set r3 = com.onesignal.OSUtils.newStringSetFromJSONArray(r7)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            com.onesignal.OSInAppMessageInternal r7 = new com.onesignal.OSInAppMessageInternal     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            com.onesignal.OSInAppMessageRedisplayStats r9 = new com.onesignal.OSInAppMessageRedisplayStats     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            r9.<init>(r4, r5)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            r7.<init>(r2, r3, r8, r9)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            r0.add(r7)     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            boolean r2 = r1.moveToNext()     // Catch: java.lang.Throwable -> L7a org.json.JSONException -> L7c
            if (r2 != 0) goto L1b
        L6e:
            if (r1 == 0) goto L8d
            boolean r2 = r1.isClosed()     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L8d
        L76:
            r1.close()     // Catch: java.lang.Throwable -> L9b
            goto L8d
        L7a:
            r0 = move-exception
            goto L8f
        L7c:
            r2 = move-exception
            com.onesignal.OneSignal$LOG_LEVEL r3 = com.onesignal.OneSignal.LOG_LEVEL.ERROR     // Catch: java.lang.Throwable -> L7a
            java.lang.String r4 = "Generating JSONArray from iam click ids:JSON Failed."
            com.onesignal.OneSignal.Log(r3, r4, r2)     // Catch: java.lang.Throwable -> L7a
            if (r1 == 0) goto L8d
            boolean r2 = r1.isClosed()     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L8d
            goto L76
        L8d:
            monitor-exit(r10)
            return r0
        L8f:
            if (r1 == 0) goto L9a
            boolean r2 = r1.isClosed()     // Catch: java.lang.Throwable -> L9b
            if (r2 != 0) goto L9a
            r1.close()     // Catch: java.lang.Throwable -> L9b
        L9a:
            throw r0     // Catch: java.lang.Throwable -> L9b
        L9b:
            r0 = move-exception
            monitor-exit(r10)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.OSInAppMessageRepository.getCachedInAppMessages():java.util.List");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
        if (r12.isClosed() == false) goto L20;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0073 A[Catch: all -> 0x00bb, TRY_ENTER, TryCatch #2 {, blocks: (B:4:0x0002, B:16:0x0073, B:18:0x0079, B:35:0x00a0, B:22:0x0086, B:24:0x008c, B:32:0x0099, B:6:0x002c, B:8:0x003b, B:11:0x0042, B:13:0x0048, B:20:0x007d, B:30:0x0094), top: B:47:0x0002 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized void cleanCachedInAppMessages() {
        /*
            r13 = this;
            monitor-enter(r13)
            r0 = 2
            java.lang.String[] r3 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r0 = "message_id"
            r1 = 0
            r3[r1] = r0     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r0 = "click_ids"
            r2 = 1
            r3[r2] = r0     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r0 = "last_display < ?"
            long r4 = java.lang.System.currentTimeMillis()     // Catch: java.lang.Throwable -> Lbb
            r6 = 1000(0x3e8, double:4.94E-321)
            long r4 = r4 / r6
            r6 = 15552000(0xed4e00, double:7.683709E-317)
            long r4 = r4 - r6
            java.lang.String r4 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> Lbb
            java.lang.String[] r9 = new java.lang.String[r2]     // Catch: java.lang.Throwable -> Lbb
            r9[r1] = r4     // Catch: java.lang.Throwable -> Lbb
            java.util.Set r10 = com.onesignal.OSUtils.newConcurrentSet()     // Catch: java.lang.Throwable -> Lbb
            java.util.Set r11 = com.onesignal.OSUtils.newConcurrentSet()     // Catch: java.lang.Throwable -> Lbb
            r12 = 0
            com.onesignal.OneSignalDbHelper r1 = r13.dbHelper     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.lang.String r2 = "in_app_message"
            r7 = 0
            r8 = 0
            r6 = 0
            r4 = r0
            r5 = r9
            android.database.Cursor r12 = r1.query(r2, r3, r4, r5, r6, r7, r8)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            if (r12 == 0) goto L7d
            int r1 = r12.getCount()     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            if (r1 != 0) goto L42
            goto L7d
        L42:
            boolean r1 = r12.moveToFirst()     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            if (r1 == 0) goto L71
        L48:
            java.lang.String r1 = "message_id"
            int r1 = r12.getColumnIndex(r1)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.lang.String r1 = r12.getString(r1)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.lang.String r2 = "click_ids"
            int r2 = r12.getColumnIndex(r2)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.lang.String r2 = r12.getString(r2)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            r10.add(r1)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            org.json.JSONArray r1 = new org.json.JSONArray     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.util.Set r1 = com.onesignal.OSUtils.newStringSetFromJSONArray(r1)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            r11.addAll(r1)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            boolean r1 = r12.moveToNext()     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            if (r1 != 0) goto L48
        L71:
            if (r12 == 0) goto La0
            boolean r1 = r12.isClosed()     // Catch: java.lang.Throwable -> Lbb
            if (r1 != 0) goto La0
        L79:
            r12.close()     // Catch: java.lang.Throwable -> Lbb
            goto La0
        L7d:
            com.onesignal.OneSignal$LOG_LEVEL r1 = com.onesignal.OneSignal.LOG_LEVEL.DEBUG     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            java.lang.String r2 = "Attempted to clean 6 month old IAM data, but none exists!"
            com.onesignal.OneSignal.onesignalLog(r1, r2)     // Catch: java.lang.Throwable -> L91 org.json.JSONException -> L93
            if (r12 == 0) goto L8f
            boolean r0 = r12.isClosed()     // Catch: java.lang.Throwable -> Lbb
            if (r0 != 0) goto L8f
            r12.close()     // Catch: java.lang.Throwable -> Lbb
        L8f:
            monitor-exit(r13)
            return
        L91:
            r0 = move-exception
            goto Laf
        L93:
            r1 = move-exception
            r1.printStackTrace()     // Catch: java.lang.Throwable -> L91
            if (r12 == 0) goto La0
            boolean r1 = r12.isClosed()     // Catch: java.lang.Throwable -> Lbb
            if (r1 != 0) goto La0
            goto L79
        La0:
            com.onesignal.OneSignalDbHelper r1 = r13.dbHelper     // Catch: java.lang.Throwable -> Lbb
            java.lang.String r2 = "in_app_message"
            r1.delete(r2, r0, r9)     // Catch: java.lang.Throwable -> Lbb
            r13.cleanInAppMessageIds(r10)     // Catch: java.lang.Throwable -> Lbb
            r13.cleanInAppMessageClickedClickIds(r11)     // Catch: java.lang.Throwable -> Lbb
            monitor-exit(r13)
            return
        Laf:
            if (r12 == 0) goto Lba
            boolean r1 = r12.isClosed()     // Catch: java.lang.Throwable -> Lbb
            if (r1 != 0) goto Lba
            r12.close()     // Catch: java.lang.Throwable -> Lbb
        Lba:
            throw r0     // Catch: java.lang.Throwable -> Lbb
        Lbb:
            r0 = move-exception
            monitor-exit(r13)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.onesignal.OSInAppMessageRepository.cleanCachedInAppMessages():void");
    }

    private void cleanInAppMessageIds(Set<String> set) {
        if (set == null || set.size() <= 0) {
            return;
        }
        Set<String> stringSet = OneSignalPrefs.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_DISMISSED_IAMS, null);
        Set<String> stringSet2 = OneSignalPrefs.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_IMPRESSIONED_IAMS, null);
        if (stringSet != null && stringSet.size() > 0) {
            stringSet.removeAll(set);
            OneSignalPrefs.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_DISMISSED_IAMS, stringSet);
        }
        if (stringSet2 == null || stringSet2.size() <= 0) {
            return;
        }
        stringSet2.removeAll(set);
        OneSignalPrefs.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_IMPRESSIONED_IAMS, stringSet2);
    }

    private void cleanInAppMessageClickedClickIds(Set<String> set) {
        Set<String> stringSet;
        if (set == null || set.size() <= 0 || (stringSet = OneSignalPrefs.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CLICKED_CLICK_IDS_IAMS, null)) == null || stringSet.size() <= 0) {
            return;
        }
        stringSet.removeAll(set);
        OneSignalPrefs.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CLICKED_CLICK_IDS_IAMS, stringSet);
    }

    private String htmlPathForMessage(String str, String str2, String str3) {
        if (str2 == null) {
            this.logger.error("Unable to find a variant for in-app message " + str);
            return null;
        }
        return "in_app_messages/" + str + "/variants/" + str2 + "/html?app_id=" + str3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getClickedMessagesId() {
        return this.sharedPreferences.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CLICKED_CLICK_IDS_IAMS, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveClickedMessagesId(Set<String> set) {
        this.sharedPreferences.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CLICKED_CLICK_IDS_IAMS, set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getImpressionesMessagesId() {
        return this.sharedPreferences.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_IMPRESSIONED_IAMS, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void saveImpressionedMessages(Set<String> set) {
        this.sharedPreferences.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_IMPRESSIONED_IAMS, set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getViewPageImpressionedIds() {
        return this.sharedPreferences.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_PAGE_IMPRESSIONED_IAMS, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveViewPageImpressionedIds(Set<String> set) {
        this.sharedPreferences.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_PAGE_IMPRESSIONED_IAMS, set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Set<String> getDismissedMessagesId() {
        return this.sharedPreferences.getStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_DISMISSED_IAMS, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveDismissedMessagesId(Set<String> set) {
        this.sharedPreferences.saveStringSet(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_DISMISSED_IAMS, set);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String getSavedIAMs() {
        return this.sharedPreferences.getString(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CACHED_IAMS, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveIAMs(String str) {
        this.sharedPreferences.saveString(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_CACHED_IAMS, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void saveLastTimeInAppDismissed(Date date) {
        this.sharedPreferences.saveString(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_LAST_TIME_IAM_DISMISSED, date != null ? date.toString() : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Date getLastTimeInAppDismissed() {
        String string = this.sharedPreferences.getString(OneSignalPrefs.PREFS_ONESIGNAL, OneSignalPrefs.PREFS_OS_LAST_TIME_IAM_DISMISSED, null);
        if (string == null) {
            return null;
        }
        try {
            return new SimpleDateFormat("EEE MMM dd HH:mm:ss zzz yyyy", Locale.ENGLISH).parse(string);
        } catch (ParseException e2) {
            OneSignal.onesignalLog(OneSignal.LOG_LEVEL.ERROR, e2.getLocalizedMessage());
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printHttpSuccessForInAppMessageRequest(String str, String str2) {
        this.logger.debug("Successful post for in-app message " + str + " request: " + str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void printHttpErrorForInAppMessageRequest(String str, int i, String str2) {
        this.logger.error("Encountered a " + i + " error while attempting in-app message " + str + " request: " + str2);
    }
}
