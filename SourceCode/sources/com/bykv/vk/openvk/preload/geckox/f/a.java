package com.bykv.vk.openvk.preload.geckox.f;

import com.bykv.vk.openvk.preload.geckox.f.a.c;
import com.bykv.vk.openvk.preload.geckox.utils.j;
import java.io.File;
import java.io.FileNotFoundException;
import java.util.concurrent.atomic.AtomicBoolean;
/* compiled from: ChannelVerLoader.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public String f8528a;

    /* renamed from: b  reason: collision with root package name */
    public String f8529b;

    /* renamed from: c  reason: collision with root package name */
    public volatile File f8530c;

    /* renamed from: d  reason: collision with root package name */
    volatile Long f8531d;

    /* renamed from: e  reason: collision with root package name */
    public AtomicBoolean f8532e = new AtomicBoolean(false);

    /* renamed from: f  reason: collision with root package name */
    private volatile com.bykv.vk.openvk.preload.geckox.f.a.a f8533f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public a(String str, String str2) {
        this.f8528a = str;
        this.f8529b = str2;
    }

    public final synchronized com.bykv.vk.openvk.preload.geckox.f.a.a a(String str) throws Exception {
        if (this.f8533f != null) {
            return this.f8533f;
        }
        File c2 = c(str);
        if (c2 == null) {
            throw new FileNotFoundException("channel no exist，channel:".concat(String.valueOf(str)));
        }
        File file = new File(c2, "res.macv");
        File file2 = new File(c2, "res");
        if (file2.exists() && file2.isDirectory()) {
            this.f8533f = new c(c2);
        } else if (file.exists() && file.isFile()) {
            this.f8533f = new com.bykv.vk.openvk.preload.geckox.f.a.b(c2);
        } else {
            throw new RuntimeException("can not find res, dir:" + c2.getAbsolutePath());
        }
        return this.f8533f;
    }

    public static String a(String str, String str2) {
        return str2.substring(str.length() + 1);
    }

    private synchronized File c(String str) throws Exception {
        if (this.f8530c != null) {
            return this.f8530c;
        } else if (this.f8531d == null || this.f8531d.longValue() != -1) {
            com.bykv.vk.openvk.preload.geckox.g.b a2 = com.bykv.vk.openvk.preload.geckox.g.b.a(this.f8528a + File.separator + str + File.separator + "select.lock");
            if (this.f8531d == null) {
                this.f8531d = j.a(new File(this.f8528a, str));
            }
            if (this.f8531d == null) {
                this.f8531d = -1L;
                a2.a();
                return null;
            }
            File file = new File(this.f8528a, File.separator + str + File.separator + this.f8531d + File.separator + "using.lock");
            this.f8530c = file.getParentFile();
            com.bykv.vk.openvk.preload.geckox.g.c.a(file.getAbsolutePath());
            File file2 = this.f8530c;
            a2.a();
            return file2;
        } else {
            return null;
        }
    }

    public final int b(String str) {
        try {
            File file = new File(c(str), "res");
            if (file.exists() && file.isDirectory()) {
                int length = file.listFiles().length;
                if (length > 0) {
                    return length - 1;
                }
                return 0;
            }
            return 0;
        } catch (Exception e2) {
            e2.printStackTrace();
            return 0;
        }
    }
}
