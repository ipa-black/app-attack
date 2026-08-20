package com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi;

import android.text.TextUtils;
import java.io.File;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
/* compiled from: MediaCacheDirImpl.java */
/* loaded from: classes2.dex */
public class Qhi implements com.bykv.vk.openvk.component.video.api.Qhi.cJ {
    private String Qhi = "video_reward_full";
    private String cJ = "video_brand";
    private String ac = "video_splash";
    private String CJ = "video_default";
    private String fl = null;
    private String Tgh = null;
    private String ROR = null;
    private String Sf = null;
    private String hm = null;

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public void Qhi(String str) {
        this.fl = str;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public String ac() {
        if (this.hm == null) {
            this.hm = this.fl + File.separator + this.CJ;
            File file = new File(this.hm);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.hm;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public String Qhi() {
        if (this.Tgh == null) {
            this.Tgh = this.fl + File.separator + this.Qhi;
            File file = new File(this.Tgh);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.Tgh;
    }

    public String fl() {
        if (this.ROR == null) {
            this.ROR = this.fl + File.separator + this.cJ;
            File file = new File(this.ROR);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.ROR;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public String cJ() {
        if (this.Sf == null) {
            this.Sf = this.fl + File.separator + this.ac;
            File file = new File(this.Sf);
            if (!file.exists()) {
                file.mkdirs();
            }
        }
        return this.Sf;
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public synchronized void CJ() {
        Set<String> set = null;
        for (com.bykv.vk.openvk.component.video.api.Qhi.Qhi qhi : Tgh()) {
            File[] Qhi = qhi.Qhi();
            if (Qhi != null && Qhi.length >= qhi.cJ()) {
                if (set == null) {
                    set = ROR();
                }
                int cJ = qhi.cJ() - 2;
                if (cJ < 0) {
                    cJ = 0;
                }
                Qhi(qhi.Qhi(), cJ, set);
            }
        }
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public boolean Qhi(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        if (TextUtils.isEmpty(acVar.cJ()) || TextUtils.isEmpty(acVar.iMK())) {
            return false;
        }
        return new File(acVar.cJ(), acVar.iMK()).exists();
    }

    @Override // com.bykv.vk.openvk.component.video.api.Qhi.cJ
    public long cJ(com.bykv.vk.openvk.component.video.api.ac.ac acVar) {
        if (TextUtils.isEmpty(acVar.cJ()) || TextUtils.isEmpty(acVar.iMK())) {
            return 0L;
        }
        return com.bykv.vk.openvk.component.video.Qhi.fl.cJ.Qhi(acVar.cJ(), acVar.iMK());
    }

    private static void Qhi(File[] fileArr, int i, Set<String> set) {
        if (i >= 0 && fileArr != null) {
            try {
                if (fileArr.length > i) {
                    List asList = Arrays.asList(fileArr);
                    Collections.sort(asList, new Comparator<File>() { // from class: com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.Qhi.1
                        @Override // java.util.Comparator
                        /* renamed from: Qhi */
                        public int compare(File file, File file2) {
                            int i2 = ((file2.lastModified() - file.lastModified()) > 0L ? 1 : ((file2.lastModified() - file.lastModified()) == 0L ? 0 : -1));
                            if (i2 == 0) {
                                return 0;
                            }
                            return i2 < 0 ? -1 : 1;
                        }
                    });
                    while (i < asList.size()) {
                        File file = (File) asList.get(i);
                        if (set != null && !set.contains(file.getAbsolutePath())) {
                            ((File) asList.get(i)).delete();
                        }
                        i++;
                    }
                }
            } catch (Throwable unused) {
            }
        }
    }

    private List<com.bykv.vk.openvk.component.video.api.Qhi.Qhi> Tgh() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new com.bykv.vk.openvk.component.video.api.Qhi.Qhi(new File(Qhi()).listFiles(), com.bykv.vk.openvk.component.video.Qhi.Qhi.ac()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.Qhi.Qhi(new File(cJ()).listFiles(), com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.Qhi.Qhi(new File(fl()).listFiles(), com.bykv.vk.openvk.component.video.Qhi.Qhi.CJ()));
        arrayList.add(new com.bykv.vk.openvk.component.video.api.Qhi.Qhi(new File(ac()).listFiles(), com.bykv.vk.openvk.component.video.Qhi.Qhi.fl()));
        return arrayList;
    }

    private Set<String> ROR() {
        HashSet hashSet = new HashSet();
        for (com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi qhi : com.bykv.vk.openvk.component.video.Qhi.Qhi.Qhi.Qhi.values()) {
            if (qhi != null && qhi.Qhi() != null) {
                com.bykv.vk.openvk.component.video.api.ac.ac Qhi = qhi.Qhi();
                hashSet.add(com.bykv.vk.openvk.component.video.Qhi.fl.cJ.cJ(Qhi.cJ(), Qhi.iMK()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.Qhi.fl.cJ.ac(Qhi.cJ(), Qhi.iMK()).getAbsolutePath());
            }
        }
        for (com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ.cJ cJVar : com.bykv.vk.openvk.component.video.Qhi.Qhi.cJ.ac.Qhi.values()) {
            if (cJVar != null && cJVar.Qhi() != null) {
                com.bykv.vk.openvk.component.video.api.ac.ac Qhi2 = cJVar.Qhi();
                hashSet.add(com.bykv.vk.openvk.component.video.Qhi.fl.cJ.cJ(Qhi2.cJ(), Qhi2.iMK()).getAbsolutePath());
                hashSet.add(com.bykv.vk.openvk.component.video.Qhi.fl.cJ.ac(Qhi2.cJ(), Qhi2.iMK()).getAbsolutePath());
            }
        }
        return hashSet;
    }
}
