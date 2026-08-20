.class public Lcom/pgl/ssdk/s;
.super Ljava/lang/Object;
.source "DeviceInfo.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:[[J

.field private static c:Ljava/lang/String;


# direct methods
.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 3
    sget-object v0, Lcom/pgl/ssdk/s;->a:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "boot_count"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/pgl/ssdk/s;->a:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    return-object p0
.end method

.method static b()Ljava/lang/String;
    .locals 1

    const-string v0, "com.samsung.android.knox.SemPersonaManager"

    .line 25
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "com.samsung.android.knoxguard.KnoxGuardManager"

    .line 26
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "androidhnext.Manifest"

    .line 28
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "androidhnext.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "androidhwext.Manifest"

    .line 30
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "androidhwext.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "oppo.Manifest"

    .line 32
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oppo.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oplus.Manifest"

    .line 33
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "oplus.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.oneplus.Manifest"

    .line 34
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "com.oneplus.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "vivo.Manifest"

    .line 36
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "vivo.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "miui.Manifest"

    .line 38
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "miui.R"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "miui.os.Build"

    .line 39
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "lineageos.platform.Manifest"

    .line 41
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "lineageos.platform.R"

    .line 42
    invoke-static {v0}, Lcom/pgl/ssdk/s;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "/system/framework/com.motorola.motosignature.jar"

    .line 44
    invoke-static {v0}, Lcom/pgl/ssdk/s;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "moto"

    goto :goto_0

    :cond_0
    const-string v0, "/system/framework/transsion-framework.jar"

    .line 46
    invoke-static {v0}, Lcom/pgl/ssdk/s;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "/system/framework/transsion-services.jar"

    invoke-static {v0}, Lcom/pgl/ssdk/s;->c(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "other"

    goto :goto_0

    :cond_1
    const-string v0, "transsion"

    goto :goto_0

    :cond_2
    const-string v0, "lineage"

    goto :goto_0

    :cond_3
    const-string v0, "xiaomi"

    goto :goto_0

    :cond_4
    const-string v0, "vivo"

    goto :goto_0

    :cond_5
    const-string v0, "oppo"

    goto :goto_0

    :cond_6
    const-string v0, "huawei"

    goto :goto_0

    :cond_7
    const-string v0, "honor"

    goto :goto_0

    :cond_8
    const-string v0, "samsung"

    :goto_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;)Z
    .locals 0

    .line 24
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method

.method public static b(Landroid/content/Context;)[Lorg/json/JSONArray;
    .locals 11

    .line 1
    sget-object v0, Lcom/pgl/ssdk/s;->b:[[J

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/16 v0, 0x9d

    .line 2
    invoke-static {v0, p0, v1}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[J

    sput-object p0, Lcom/pgl/ssdk/s;->b:[[J

    .line 4
    :cond_0
    sget-object p0, Lcom/pgl/ssdk/s;->b:[[J

    if-eqz p0, :cond_2

    array-length p0, p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 9
    sget-object p0, Lcom/pgl/ssdk/s;->b:[[J

    const/4 v3, 0x0

    aget-object v4, p0, v3

    const/4 v5, 0x1

    .line 10
    aget-object p0, p0, v5

    .line 12
    new-instance v6, Lorg/json/JSONArray;

    invoke-direct {v6}, Lorg/json/JSONArray;-><init>()V

    .line 13
    new-instance v7, Lorg/json/JSONArray;

    invoke-direct {v7}, Lorg/json/JSONArray;-><init>()V

    move v8, v3

    .line 15
    :goto_0
    :try_start_0
    array-length v9, v4

    if-ge v8, v9, :cond_1

    .line 16
    aget-wide v9, v4, v8

    sub-long v9, v1, v9

    invoke-virtual {v6, v8, v9, v10}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;

    .line 17
    aget-wide v9, p0, v8

    sub-long v9, v1, v9

    invoke-virtual {v7, v8, v9, v10}, Lorg/json/JSONArray;->put(IJ)Lorg/json/JSONArray;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 22
    :catch_0
    :cond_1
    new-array p0, v0, [Lorg/json/JSONArray;

    aput-object v6, p0, v3

    aput-object v7, p0, v5

    return-object p0

    .line 23
    :cond_2
    sput-object v1, Lcom/pgl/ssdk/s;->b:[[J

    return-object v1
.end method

.method public static c()Ljava/lang/String;
    .locals 3

    .line 2
    sget-object v0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    sget-object v0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    return-object v0

    .line 5
    :cond_0
    invoke-static {}, Lcom/pgl/ssdk/v;->b()Landroid/content/Context;

    move-result-object v0

    const-string v1, "romtype"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/pgl/ssdk/L;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    sget-object v0, Lcom/pgl/ssdk/s;->c:Ljava/lang/String;

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Lcom/pgl/ssdk/s$a;

    invoke-direct {v0}, Lcom/pgl/ssdk/s$a;-><init>()V

    invoke-static {v0}, Lcom/pgl/ssdk/c;->a(Ljava/lang/Runnable;)V

    const-string v0, ""

    return-object v0
.end method

.method private static c(Ljava/lang/String;)Z
    .locals 1

    .line 1
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    const/4 p0, 0x0

    return p0
.end method
