package com.bykv.vk.openvk.preload.geckox.statistic;

import android.accounts.NetworkErrorException;
import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.bykv.vk.openvk.preload.geckox.logger.GeckoLogger;
import com.bykv.vk.openvk.preload.geckox.model.Common;
import com.bykv.vk.openvk.preload.geckox.net.Response;
import com.bykv.vk.openvk.preload.geckox.statistic.model.StatisticModel;
import com.bykv.vk.openvk.preload.geckox.utils.h;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.unity3d.services.core.request.metrics.MetricCommonTags;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import org.json.JSONObject;
/* compiled from: UploadStatistic.java */
/* loaded from: classes2.dex */
public final class c {
    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        StatisticModel b2 = b(bVar, aVar);
        if (b2 == null || b2.packages == null) {
            return;
        }
        IStatisticMonitor iStatisticMonitor = bVar.f8470c;
        if (iStatisticMonitor != null) {
            try {
                for (StatisticModel.PackageStatisticModel packageStatisticModel : b2.packages) {
                    iStatisticMonitor.upload("geckosdk_update_stats", a(packageStatisticModel, b2.common));
                }
            } catch (Throwable th) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
        if (bVar.o) {
            try {
                String a2 = com.bykv.vk.openvk.preload.geckox.c.b.a().f8504a.a(b2);
                if (TextUtils.isEmpty(a2)) {
                    return;
                }
                a(bVar, a2);
            } catch (Throwable unused) {
            }
        }
    }

    private static void a(final com.bykv.vk.openvk.preload.geckox.b bVar, final String str) {
        final String str2 = "https://" + bVar.k + "/gecko/server/packages/stats";
        com.bykv.vk.openvk.preload.geckox.b.a().execute(new Runnable() { // from class: com.bykv.vk.openvk.preload.geckox.statistic.c.1
            @Override // java.lang.Runnable
            public final void run() {
                Response doPost;
                for (int i = 0; i < 3; i++) {
                    try {
                        doPost = com.bykv.vk.openvk.preload.geckox.b.this.f8471d.doPost(str2, str);
                    } catch (Exception e2) {
                        GeckoLogger.w("gecko-debug-tag", "upload statistic:", e2);
                    }
                    if (doPost.code != 200) {
                        throw new NetworkErrorException("net work get failed, code: " + doPost.code + ", url:" + str2);
                        break;
                    } else if (new JSONObject(doPost.body).getInt("status") == 0) {
                        return;
                    }
                }
            }
        });
    }

    private static JSONObject a(StatisticModel.PackageStatisticModel packageStatisticModel, Common common) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put(TtmlNode.TAG_REGION, common.region);
        jSONObject.put("err_code", packageStatisticModel.errCode);
        jSONObject.put("err_msg", packageStatisticModel.errMsg);
        jSONObject.put("sdk_version", common.sdkVersion);
        jSONObject.put("access_key", packageStatisticModel.accessKey);
        jSONObject.put("stats_type", packageStatisticModel.statsType);
        jSONObject.put("device_id", common.deviceId);
        jSONObject.put("patch_id", packageStatisticModel.patchId == null ? 0L : packageStatisticModel.patchId.longValue());
        jSONObject.put("group_name", packageStatisticModel.groupName);
        jSONObject.put("os", common.os);
        jSONObject.put("app_version", common.appVersion);
        jSONObject.put("device_model", common.deviceModel);
        jSONObject.put("channel", packageStatisticModel.channel);
        jSONObject.put("id", packageStatisticModel.id == null ? 0L : packageStatisticModel.id.longValue());
        jSONObject.put("ac", common.ac);
        jSONObject.put("download_retry_times", packageStatisticModel.downloadRetryTimes == null ? 0 : packageStatisticModel.downloadRetryTimes.intValue());
        jSONObject.put("download_url", packageStatisticModel.downloadUrl == null ? "" : packageStatisticModel.downloadUrl);
        jSONObject.put("download_duration", packageStatisticModel.downloadDuration);
        jSONObject.put("download_fail_records", packageStatisticModel.downloadFailRecords != null ? packageStatisticModel.downloadFailRecords : "");
        jSONObject.put("log_id", packageStatisticModel.logId);
        jSONObject.put("active_check_duration", packageStatisticModel.activeCheckDuration == null ? 0L : packageStatisticModel.activeCheckDuration.longValue());
        jSONObject.put("apply_duration", packageStatisticModel.applyDuration != null ? packageStatisticModel.applyDuration.longValue() : 0L);
        return jSONObject;
    }

    private static JSONObject b(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar2) throws Exception {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("params_for_special", "gecko");
        jSONObject.put("device_id", bVar.j);
        jSONObject.put("os", 0);
        jSONObject.put("app_version", bVar.i);
        jSONObject.put("api_version", "v3");
        jSONObject.put("aid", bVar.f8475h.longValue());
        jSONObject.put("x_tt_logid", bVar2.f8587e);
        jSONObject.put("http_status", bVar2.f8589g);
        jSONObject.put("err_msg", bVar2.f8586d);
        if (TextUtils.isEmpty(bVar2.f8587e)) {
            jSONObject.put("deployments_info", bVar2.f8584b);
            jSONObject.put("local_info", bVar2.f8583a);
            jSONObject.put("custom_info", bVar2.f8585c);
        } else {
            jSONObject.put("deployments_info", "");
            jSONObject.put("local_info", "");
            jSONObject.put("custom_info", "");
        }
        jSONObject.put("os_version", new StringBuilder().append(Build.VERSION.SDK_INT).toString());
        jSONObject.put("device_platform", MetricCommonTags.METRIC_COMMON_TAG_PLATFORM_ANDROID);
        jSONObject.put("device_model", Build.MODEL);
        jSONObject.put("ac", bVar2.f8588f);
        return jSONObject;
    }

    private static StatisticModel b(com.bykv.vk.openvk.preload.geckox.b bVar, a aVar) {
        ArrayList<StatisticModel.PackageStatisticModel> arrayList = new ArrayList();
        for (com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar2 : aVar.a()) {
            if (aVar2.f8578d != null || aVar2.f8580f != 0) {
                if (aVar2.f8582h && aVar2.i) {
                    StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel);
                    packageStatisticModel.statsType = 100;
                    packageStatisticModel.groupName = aVar2.f8576b;
                    packageStatisticModel.accessKey = aVar2.f8575a;
                    packageStatisticModel.channel = aVar2.f8577c;
                    packageStatisticModel.ac = aVar2.p;
                    packageStatisticModel.id = aVar2.r;
                    packageStatisticModel.patchId = aVar2.q;
                    packageStatisticModel.downloadRetryTimes = a(aVar2.f8579e);
                    packageStatisticModel.downloadUrl = aVar2.f8578d;
                    packageStatisticModel.downloadFailRecords = b(aVar2.f8579e);
                    packageStatisticModel.downloadDuration = Long.valueOf(aVar2.f8581g - aVar2.f8580f);
                    if (!aVar2.j) {
                        StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel2);
                        packageStatisticModel2.statsType = 100;
                        packageStatisticModel2.channel = aVar2.f8577c;
                        packageStatisticModel2.errCode = "403";
                        packageStatisticModel2.errMsg = aVar2.t;
                        packageStatisticModel2.ac = aVar2.p;
                        packageStatisticModel2.patchId = aVar2.q;
                        packageStatisticModel2.id = aVar2.r;
                        packageStatisticModel2.downloadRetryTimes = a(aVar2.f8579e);
                        packageStatisticModel2.downloadUrl = aVar2.f8578d;
                        packageStatisticModel2.downloadFailRecords = b(aVar2.f8579e);
                    } else if (aVar2.k) {
                        StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel3);
                        packageStatisticModel3.accessKey = aVar2.f8575a;
                        packageStatisticModel3.groupName = aVar2.f8576b;
                        packageStatisticModel3.statsType = 102;
                        packageStatisticModel3.patchId = aVar2.q;
                        packageStatisticModel3.id = aVar2.r;
                        packageStatisticModel3.channel = aVar2.f8577c;
                        packageStatisticModel3.activeCheckDuration = Long.valueOf(aVar2.n - aVar2.f8581g);
                        packageStatisticModel3.applyDuration = Long.valueOf(aVar2.o - aVar2.n);
                    } else {
                        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
                        arrayList.add(packageStatisticModel4);
                        packageStatisticModel4.accessKey = aVar2.f8575a;
                        packageStatisticModel4.groupName = aVar2.f8576b;
                        packageStatisticModel4.statsType = 103;
                        packageStatisticModel4.errCode = "501";
                        packageStatisticModel4.channel = aVar2.f8577c;
                        packageStatisticModel4.patchId = aVar2.q;
                        packageStatisticModel4.id = aVar2.r;
                        packageStatisticModel4.errMsg = aVar2.u;
                        a(aVar2, arrayList);
                    }
                } else {
                    StatisticModel.PackageStatisticModel packageStatisticModel5 = new StatisticModel.PackageStatisticModel();
                    arrayList.add(packageStatisticModel5);
                    packageStatisticModel5.statsType = 101;
                    packageStatisticModel5.accessKey = aVar2.f8575a;
                    packageStatisticModel5.groupName = aVar2.f8576b;
                    packageStatisticModel5.channel = aVar2.f8577c;
                    packageStatisticModel5.ac = aVar2.p;
                    packageStatisticModel5.patchId = aVar2.q;
                    packageStatisticModel5.id = aVar2.r;
                    packageStatisticModel5.downloadRetryTimes = a(aVar2.f8579e);
                    packageStatisticModel5.downloadUrl = aVar2.f8578d;
                    packageStatisticModel5.downloadFailRecords = b(aVar2.f8579e);
                    if (!aVar2.f8582h) {
                        packageStatisticModel5.errCode = "301";
                        if (aVar2.f8579e != null && !aVar2.f8579e.isEmpty()) {
                            packageStatisticModel5.errMsg = aVar2.f8579e.get(0).reason;
                        }
                    } else if (!aVar2.i) {
                        packageStatisticModel5.errCode = "402";
                        packageStatisticModel5.errMsg = aVar2.s;
                    }
                    a(aVar2, arrayList);
                }
            }
            a(aVar2, arrayList);
        }
        Context context = bVar.f8468a;
        arrayList.addAll(com.bykv.vk.openvk.preload.geckox.a.b.a(context).a());
        if (arrayList.isEmpty()) {
            return null;
        }
        Common common = new Common(bVar.f8475h.longValue(), bVar.i, bVar.j, com.bykv.vk.openvk.preload.geckox.utils.a.b(context), h.a(context), bVar.m, bVar.l);
        StatisticModel statisticModel = new StatisticModel();
        statisticModel.common = common;
        statisticModel.packages = arrayList;
        String uuid = UUID.randomUUID().toString();
        for (StatisticModel.PackageStatisticModel packageStatisticModel6 : arrayList) {
            packageStatisticModel6.logId = uuid;
        }
        return statisticModel;
    }

    private static Integer a(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return Integer.valueOf(list.size());
    }

    private static void a(com.bykv.vk.openvk.preload.geckox.statistic.model.a aVar, List<StatisticModel.PackageStatisticModel> list) {
        if (aVar.B && aVar.C) {
            StatisticModel.PackageStatisticModel packageStatisticModel = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel);
            packageStatisticModel.statsType = 0;
            packageStatisticModel.accessKey = aVar.f8575a;
            packageStatisticModel.groupName = aVar.f8576b;
            packageStatisticModel.channel = aVar.f8577c;
            packageStatisticModel.ac = aVar.p;
            packageStatisticModel.id = aVar.r;
            packageStatisticModel.downloadRetryTimes = a(aVar.w);
            packageStatisticModel.downloadUrl = aVar.v;
            packageStatisticModel.downloadFailRecords = b(aVar.w);
            packageStatisticModel.downloadDuration = Long.valueOf(aVar.y - aVar.x);
            if (aVar.D) {
                StatisticModel.PackageStatisticModel packageStatisticModel2 = new StatisticModel.PackageStatisticModel();
                list.add(packageStatisticModel2);
                packageStatisticModel2.accessKey = aVar.f8575a;
                packageStatisticModel2.groupName = aVar.f8576b;
                packageStatisticModel2.statsType = 2;
                packageStatisticModel2.id = aVar.r;
                packageStatisticModel2.channel = aVar.f8577c;
                packageStatisticModel2.activeCheckDuration = Long.valueOf(aVar.z - aVar.y);
                packageStatisticModel2.applyDuration = Long.valueOf(aVar.A - aVar.z);
                return;
            }
            StatisticModel.PackageStatisticModel packageStatisticModel3 = new StatisticModel.PackageStatisticModel();
            list.add(packageStatisticModel3);
            packageStatisticModel3.statsType = 3;
            packageStatisticModel3.accessKey = aVar.f8575a;
            packageStatisticModel3.groupName = aVar.f8576b;
            packageStatisticModel3.errCode = "500";
            packageStatisticModel3.id = aVar.r;
            packageStatisticModel3.channel = aVar.f8577c;
            packageStatisticModel3.errMsg = aVar.F;
            return;
        }
        StatisticModel.PackageStatisticModel packageStatisticModel4 = new StatisticModel.PackageStatisticModel();
        list.add(packageStatisticModel4);
        packageStatisticModel4.statsType = 1;
        packageStatisticModel4.accessKey = aVar.f8575a;
        packageStatisticModel4.groupName = aVar.f8576b;
        packageStatisticModel4.channel = aVar.f8577c;
        packageStatisticModel4.ac = aVar.p;
        packageStatisticModel4.id = aVar.r;
        packageStatisticModel4.downloadRetryTimes = a(aVar.w);
        packageStatisticModel4.downloadUrl = aVar.v;
        packageStatisticModel4.downloadFailRecords = b(aVar.w);
        if (!aVar.B) {
            packageStatisticModel4.errCode = "300";
            if (aVar.w == null || aVar.w.isEmpty()) {
                return;
            }
            packageStatisticModel4.errMsg = aVar.w.get(0).reason;
        } else if (aVar.C) {
        } else {
            packageStatisticModel4.errCode = "450";
            packageStatisticModel4.errMsg = aVar.E;
        }
    }

    private static List<StatisticModel.PackageStatisticModel.DownloadFailRecords> b(List<StatisticModel.PackageStatisticModel.DownloadFailRecords> list) {
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list;
    }

    public static void a(com.bykv.vk.openvk.preload.geckox.b bVar, com.bykv.vk.openvk.preload.geckox.statistic.model.b bVar2) {
        IStatisticMonitor iStatisticMonitor = bVar.f8470c;
        if (iStatisticMonitor != null) {
            try {
                iStatisticMonitor.upload("geckosdk_query_pkgs", b(bVar, bVar2));
            } catch (Throwable th) {
                GeckoLogger.w("gecko-debug-tag", "UploadStatistic.upload:", th);
            }
        }
    }
}
