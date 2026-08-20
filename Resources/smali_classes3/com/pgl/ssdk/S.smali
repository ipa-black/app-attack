.class public Lcom/pgl/ssdk/S;
.super Ljava/lang/Object;
.source "SelasAgent.java"


# static fields
.field public static a:I = 0x1f8

.field public static b:Ljava/lang/String; = null

.field public static c:Ljava/lang/String; = ""

.field private static d:Landroid/content/Context;


# direct methods
.method public static declared-synchronized a([B)Ljava/lang/Object;
    .locals 3

    const-class v0, Lcom/pgl/ssdk/S;

    monitor-enter v0

    if-eqz p0, :cond_0

    .line 17
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/S;->d:Landroid/content/Context;

    const/16 v2, 0x12e

    invoke-static {v2, v1, p0}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0
.end method

.method public static a()Ljava/lang/String;
    .locals 4

    .line 18
    const-string v0, ""

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "os"

    const-string v3, "Android"

    .line 19
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "version"

    const-string v3, "6.2.0.0.overseas-rc.2"

    .line 20
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    sget-object v2, Lcom/pgl/ssdk/S;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v3, "token_id"

    if-eqz v2, :cond_0

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 22
    sget-object v2, Lcom/pgl/ssdk/S;->c:Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 25
    :cond_0
    :try_start_2
    invoke-static {}, Lcom/pgl/ssdk/S;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 27
    :catchall_0
    :try_start_3
    invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_0
    const-string v2, "code"

    .line 35
    :try_start_4
    sget v3, Lcom/pgl/ssdk/S;->a:I

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 36
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    return-object v0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/pgl/ssdk/S;->d:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    sput-object p0, Lcom/pgl/ssdk/S;->d:Landroid/content/Context;

    .line 5
    :cond_0
    sget v0, Lcom/pgl/ssdk/S;->a:I

    const/16 v1, 0x66

    if-eq v0, v1, :cond_1

    const/16 v2, 0xca

    if-eq v0, v2, :cond_1

    const/16 v2, 0xc8

    if-eq v0, v2, :cond_1

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 14
    sput-object p1, Lcom/pgl/ssdk/S;->b:Ljava/lang/String;

    .line 15
    sput v1, Lcom/pgl/ssdk/S;->a:I

    .line 16
    new-instance p1, Lcom/pgl/ssdk/T;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/pgl/ssdk/T;-><init>(Landroid/content/Context;Lcom/pgl/ssdk/U;)V

    invoke-static {p1}, Lcom/pgl/ssdk/c;->a(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public static declared-synchronized b()Ljava/lang/String;
    .locals 4

    const-class v0, Lcom/pgl/ssdk/S;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/pgl/ssdk/S;->c:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget-object v1, Lcom/pgl/ssdk/S;->d:Landroid/content/Context;

    const/16 v2, 0x12f

    const/4 v3, 0x0

    invoke-static {v2, v1, v3}, Lcom/pgl/ssdk/ces/a;->meta(ILandroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sput-object v1, Lcom/pgl/ssdk/S;->c:Ljava/lang/String;

    .line 4
    :cond_0
    sget-object v1, Lcom/pgl/ssdk/S;->c:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static c()V
    .locals 3

    .line 1
    sget-object v0, Lcom/pgl/ssdk/S;->d:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/16 v1, 0x66

    .line 2
    sput v1, Lcom/pgl/ssdk/S;->a:I

    .line 3
    new-instance v1, Lcom/pgl/ssdk/T;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/pgl/ssdk/T;-><init>(Landroid/content/Context;Lcom/pgl/ssdk/U;)V

    invoke-static {v1}, Lcom/pgl/ssdk/c;->a(Ljava/lang/Runnable;)V

    .line 4
    invoke-static {}, Lcom/pgl/ssdk/ces/c;->g()Lcom/pgl/ssdk/ces/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/pgl/ssdk/ces/c;->a()V

    .line 5
    invoke-static {}, Lcom/pgl/ssdk/v;->a()V

    :cond_0
    return-void
.end method
