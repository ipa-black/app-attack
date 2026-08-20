package org.altbeacon.beacon.distance;

import android.content.Context;
import android.os.AsyncTask;
import com.appnext.ads.fullscreen.RewardedVideo;
import com.unity3d.ads.metadata.MediationMetaData;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.locks.ReentrantLock;
import org.altbeacon.beacon.distance.ModelSpecificDistanceUpdater;
import org.altbeacon.beacon.logging.LogManager;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes5.dex */
public class ModelSpecificDistanceCalculator implements DistanceCalculator {
    private static final String CONFIG_FILE = "model-distance-calculations.json";
    private static final String TAG = "ModelSpecificDistanceCalculator";
    private Context mContext;
    private AndroidModel mDefaultModel;
    private DistanceCalculator mDistanceCalculator;
    private final ReentrantLock mLock;
    private AndroidModel mModel;
    Map<AndroidModel, DistanceCalculator> mModelMap;
    private String mRemoteUpdateUrlString;
    private AndroidModel mRequestedModel;

    public ModelSpecificDistanceCalculator(Context context, String str) {
        this(context, str, AndroidModel.forThisDevice());
    }

    public ModelSpecificDistanceCalculator(Context context, String str, AndroidModel androidModel) {
        this.mRemoteUpdateUrlString = null;
        this.mLock = new ReentrantLock();
        this.mRequestedModel = androidModel;
        this.mRemoteUpdateUrlString = str;
        this.mContext = context;
        loadModelMap();
        this.mDistanceCalculator = findCalculatorForModelWithLock(androidModel);
    }

    public AndroidModel getModel() {
        return this.mModel;
    }

    public AndroidModel getRequestedModel() {
        return this.mRequestedModel;
    }

    @Override // org.altbeacon.beacon.distance.DistanceCalculator
    public double calculateDistance(int i, double d2) {
        DistanceCalculator distanceCalculator = this.mDistanceCalculator;
        if (distanceCalculator == null) {
            LogManager.w(TAG, "distance calculator has not been set", new Object[0]);
            return -1.0d;
        }
        return distanceCalculator.calculateDistance(i, d2);
    }

    DistanceCalculator findCalculatorForModelWithLock(AndroidModel androidModel) {
        this.mLock.lock();
        try {
            return findCalculatorForModel(androidModel);
        } finally {
            this.mLock.unlock();
        }
    }

    private DistanceCalculator findCalculatorForModel(AndroidModel androidModel) {
        LogManager.d(TAG, "Finding best distance calculator for %s, %s, %s, %s", androidModel.getVersion(), androidModel.getBuildNumber(), androidModel.getModel(), androidModel.getManufacturer());
        Map<AndroidModel, DistanceCalculator> map = this.mModelMap;
        AndroidModel androidModel2 = null;
        if (map == null) {
            LogManager.d(TAG, "Cannot get distance calculator because modelMap was never initialized", new Object[0]);
            return null;
        }
        int i = 0;
        for (AndroidModel androidModel3 : map.keySet()) {
            if (androidModel3.matchScore(androidModel) > i) {
                i = androidModel3.matchScore(androidModel);
                androidModel2 = androidModel3;
            }
        }
        if (androidModel2 != null) {
            LogManager.d(TAG, "found a match with score %s", Integer.valueOf(i));
            LogManager.d(TAG, "Finding best distance calculator for %s, %s, %s, %s", androidModel2.getVersion(), androidModel2.getBuildNumber(), androidModel2.getModel(), androidModel2.getManufacturer());
            this.mModel = androidModel2;
        } else {
            this.mModel = this.mDefaultModel;
            LogManager.w(TAG, "Cannot find match for this device.  Using default", new Object[0]);
        }
        return this.mModelMap.get(this.mModel);
    }

    private void loadModelMap() {
        boolean z;
        if (this.mRemoteUpdateUrlString != null) {
            z = loadModelMapFromFile();
            if (!z) {
                requestModelMapFromWeb();
            }
        } else {
            z = false;
        }
        if (!z) {
            loadDefaultModelMap();
        }
        this.mDistanceCalculator = findCalculatorForModelWithLock(this.mRequestedModel);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean loadModelMapFromFile() {
        FileInputStream fileInputStream;
        File file = new File(this.mContext.getFilesDir(), CONFIG_FILE);
        StringBuilder sb = new StringBuilder();
        BufferedReader bufferedReader = null;
        try {
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(fileInputStream));
                    while (true) {
                        try {
                            String readLine = bufferedReader2.readLine();
                            if (readLine != null) {
                                sb.append(readLine).append("\n");
                            } else {
                                try {
                                    break;
                                } catch (Exception unused) {
                                }
                            }
                        } catch (FileNotFoundException unused2) {
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused3) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception unused4) {
                                }
                            }
                            return false;
                        } catch (IOException e2) {
                            e = e2;
                            bufferedReader = bufferedReader2;
                            LogManager.e(e, TAG, "Cannot open distance model file %s", file);
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused5) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception unused6) {
                                }
                            }
                            return false;
                        } catch (Throwable th) {
                            th = th;
                            bufferedReader = bufferedReader2;
                            if (bufferedReader != null) {
                                try {
                                    bufferedReader.close();
                                } catch (Exception unused7) {
                                }
                            }
                            if (fileInputStream != null) {
                                try {
                                    fileInputStream.close();
                                } catch (Exception unused8) {
                                }
                            }
                            throw th;
                        }
                    }
                    bufferedReader2.close();
                    try {
                        fileInputStream.close();
                    } catch (Exception unused9) {
                    }
                    try {
                        buildModelMapWithLock(sb.toString());
                        return true;
                    } catch (JSONException e3) {
                        LogManager.e(e3, TAG, "Cannot update distance models from online database at %s with JSON: %s", this.mRemoteUpdateUrlString, sb.toString());
                        return false;
                    }
                } catch (FileNotFoundException unused10) {
                } catch (IOException e4) {
                    e = e4;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (FileNotFoundException unused11) {
            fileInputStream = null;
        } catch (IOException e5) {
            e = e5;
            fileInputStream = null;
        } catch (Throwable th3) {
            th = th3;
            fileInputStream = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean saveJson(String str) {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                fileOutputStream = this.mContext.openFileOutput(CONFIG_FILE, 0);
                fileOutputStream.write(str.getBytes());
                fileOutputStream.close();
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused) {
                    }
                }
                LogManager.i(TAG, "Successfully saved new distance model file", new Object[0]);
                return true;
            } catch (Throwable th) {
                if (fileOutputStream != null) {
                    try {
                        fileOutputStream.close();
                    } catch (Exception unused2) {
                    }
                }
                throw th;
            }
        } catch (Exception e2) {
            LogManager.w(e2, TAG, "Cannot write updated distance model to local storage", new Object[0]);
            if (fileOutputStream != null) {
                try {
                    fileOutputStream.close();
                } catch (Exception unused3) {
                }
            }
            return false;
        }
    }

    private void requestModelMapFromWeb() {
        if (this.mContext.checkCallingOrSelfPermission("android.permission.INTERNET") != 0) {
            LogManager.w(TAG, "App has no android.permission.INTERNET permission.  Cannot check for distance model updates", new Object[0]);
        } else {
            new ModelSpecificDistanceUpdater(this.mContext, this.mRemoteUpdateUrlString, new ModelSpecificDistanceUpdater.CompletionHandler() { // from class: org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator.1
                @Override // org.altbeacon.beacon.distance.ModelSpecificDistanceUpdater.CompletionHandler
                public void onComplete(String str, Exception exc, int i) {
                    if (exc != null) {
                        LogManager.w(ModelSpecificDistanceCalculator.TAG, "Cannot updated distance models from online database at %s", exc, ModelSpecificDistanceCalculator.this.mRemoteUpdateUrlString);
                    } else if (i != 200) {
                        LogManager.w(ModelSpecificDistanceCalculator.TAG, "Cannot updated distance models from online database at %s due to HTTP status code %s", ModelSpecificDistanceCalculator.this.mRemoteUpdateUrlString, Integer.valueOf(i));
                    } else {
                        LogManager.d(ModelSpecificDistanceCalculator.TAG, "Successfully downloaded distance models from online database", new Object[0]);
                        try {
                            ModelSpecificDistanceCalculator.this.buildModelMapWithLock(str);
                            if (ModelSpecificDistanceCalculator.this.saveJson(str)) {
                                ModelSpecificDistanceCalculator.this.loadModelMapFromFile();
                                ModelSpecificDistanceCalculator modelSpecificDistanceCalculator = ModelSpecificDistanceCalculator.this;
                                modelSpecificDistanceCalculator.mDistanceCalculator = modelSpecificDistanceCalculator.findCalculatorForModelWithLock(modelSpecificDistanceCalculator.mRequestedModel);
                                LogManager.i(ModelSpecificDistanceCalculator.TAG, "Successfully updated distance model with latest from online database", new Object[0]);
                            }
                        } catch (JSONException e2) {
                            LogManager.w(e2, ModelSpecificDistanceCalculator.TAG, "Cannot parse json from downloaded distance model", new Object[0]);
                        }
                    }
                }
            }).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        }
    }

    void buildModelMapWithLock(String str) throws JSONException {
        this.mLock.lock();
        try {
            buildModelMap(str);
        } finally {
            this.mLock.unlock();
        }
    }

    private void buildModelMap(String str) throws JSONException {
        HashMap hashMap = new HashMap();
        JSONArray jSONArray = new JSONObject(str).getJSONArray("models");
        for (int i = 0; i < jSONArray.length(); i++) {
            JSONObject jSONObject = jSONArray.getJSONObject(i);
            boolean z = jSONObject.has(RewardedVideo.VIDEO_MODE_DEFAULT) ? jSONObject.getBoolean(RewardedVideo.VIDEO_MODE_DEFAULT) : false;
            Double valueOf = Double.valueOf(jSONObject.getDouble("coefficient1"));
            Double valueOf2 = Double.valueOf(jSONObject.getDouble("coefficient2"));
            Double valueOf3 = Double.valueOf(jSONObject.getDouble("coefficient3"));
            String string = jSONObject.getString(MediationMetaData.KEY_VERSION);
            String string2 = jSONObject.getString("build_number");
            String string3 = jSONObject.getString("model");
            String string4 = jSONObject.getString("manufacturer");
            CurveFittedDistanceCalculator curveFittedDistanceCalculator = new CurveFittedDistanceCalculator(valueOf.doubleValue(), valueOf2.doubleValue(), valueOf3.doubleValue());
            AndroidModel androidModel = new AndroidModel(string, string2, string3, string4);
            hashMap.put(androidModel, curveFittedDistanceCalculator);
            if (z) {
                this.mDefaultModel = androidModel;
            }
        }
        this.mModelMap = hashMap;
    }

    private void loadDefaultModelMap() {
        try {
            buildModelMap(stringFromFilePath(CONFIG_FILE));
        } catch (Exception e2) {
            this.mModelMap = new HashMap();
            LogManager.e(e2, TAG, "Cannot build model distance calculations", new Object[0]);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0089  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String stringFromFilePath(java.lang.String r8) throws java.io.IOException {
        /*
            r7 = this;
            java.lang.String r0 = "/"
            java.lang.String r1 = "Cannot load resource at "
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            r3 = 0
            java.lang.Class<org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator> r4 = org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator.class
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L80
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L80
            java.lang.StringBuilder r5 = r5.append(r8)     // Catch: java.lang.Throwable -> L80
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Throwable -> L80
            java.io.InputStream r4 = r4.getResourceAsStream(r5)     // Catch: java.lang.Throwable -> L80
            if (r4 != 0) goto L3b
            java.lang.Class r5 = r7.getClass()     // Catch: java.lang.Throwable -> L39
            java.lang.ClassLoader r5 = r5.getClassLoader()     // Catch: java.lang.Throwable -> L39
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L39
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L39
            java.lang.StringBuilder r0 = r6.append(r8)     // Catch: java.lang.Throwable -> L39
            java.lang.String r0 = r0.toString()     // Catch: java.lang.Throwable -> L39
            java.io.InputStream r4 = r5.getResourceAsStream(r0)     // Catch: java.lang.Throwable -> L39
            goto L3b
        L39:
            r8 = move-exception
            goto L82
        L3b:
            if (r4 == 0) goto L6d
            java.io.BufferedReader r8 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L39
            java.io.InputStreamReader r0 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L39
            java.lang.String r1 = "UTF-8"
            r0.<init>(r4, r1)     // Catch: java.lang.Throwable -> L39
            r8.<init>(r0)     // Catch: java.lang.Throwable -> L39
            java.lang.String r0 = r8.readLine()     // Catch: java.lang.Throwable -> L69
        L4d:
            if (r0 == 0) goto L5c
            r2.append(r0)     // Catch: java.lang.Throwable -> L69
            r0 = 10
            r2.append(r0)     // Catch: java.lang.Throwable -> L69
            java.lang.String r0 = r8.readLine()     // Catch: java.lang.Throwable -> L69
            goto L4d
        L5c:
            r8.close()
            if (r4 == 0) goto L64
            r4.close()
        L64:
            java.lang.String r8 = r2.toString()
            return r8
        L69:
            r0 = move-exception
            r3 = r8
            r8 = r0
            goto L82
        L6d:
            java.lang.RuntimeException r0 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L39
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L39
            r2.<init>(r1)     // Catch: java.lang.Throwable -> L39
            java.lang.StringBuilder r8 = r2.append(r8)     // Catch: java.lang.Throwable -> L39
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> L39
            r0.<init>(r8)     // Catch: java.lang.Throwable -> L39
            throw r0     // Catch: java.lang.Throwable -> L39
        L80:
            r8 = move-exception
            r4 = r3
        L82:
            if (r3 == 0) goto L87
            r3.close()
        L87:
            if (r4 == 0) goto L8c
            r4.close()
        L8c:
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: org.altbeacon.beacon.distance.ModelSpecificDistanceCalculator.stringFromFilePath(java.lang.String):java.lang.String");
    }
}
