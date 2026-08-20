.class public final Lcom/appodeal/ads/l5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/UserData;


# static fields
.field public static volatile l:Lcom/appodeal/ads/l5;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/appodeal/ads/UserSettings$Gender;

.field public c:Ljava/lang/Integer;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/Float;

.field public i:Ljava/lang/Float;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/appodeal/ads/l5;
    .locals 2

    sget-object v0, Lcom/appodeal/ads/l5;->l:Lcom/appodeal/ads/l5;

    if-nez v0, :cond_1

    const-class v0, Lcom/appodeal/ads/l5;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/appodeal/ads/l5;->l:Lcom/appodeal/ads/l5;

    if-nez v1, :cond_0

    new-instance v1, Lcom/appodeal/ads/l5;

    invoke-direct {v1}, Lcom/appodeal/ads/l5;-><init>()V

    sput-object v1, Lcom/appodeal/ads/l5;->l:Lcom/appodeal/ads/l5;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/appodeal/ads/l5;->l:Lcom/appodeal/ads/l5;

    return-object v0
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 7

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/appodeal/ads/l5;->a()Lcom/appodeal/ads/l5;

    move-result-object v0

    const-string v1, "user_settings"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v2, v0, Lcom/appodeal/ads/l5;->b:Lcom/appodeal/ads/UserSettings$Gender;

    const/4 v3, -0x1

    if-nez v2, :cond_1

    const-string v2, "gender"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v2}, Lcom/appodeal/ads/UserSettings$Gender;->fromInteger(Ljava/lang/Integer;)Lcom/appodeal/ads/UserSettings$Gender;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v0, Lcom/appodeal/ads/l5;->b:Lcom/appodeal/ads/UserSettings$Gender;

    :cond_1
    iget-object v2, v0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    if-nez v2, :cond_2

    const-string v2, "age"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    if-le v2, v3, :cond_2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iput-object v2, v0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    :cond_2
    const-string v2, "lat"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    const/high16 v4, -0x40800000    # -1.0f

    const-wide/high16 v5, -0x4010000000000000L    # -1.0

    if-eqz v3, :cond_3

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_3

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/appodeal/ads/l5;->h:Ljava/lang/Float;

    :cond_3
    const-string v2, "lon"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v1, v2, v5, v6}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    double-to-float v2, v2

    cmpl-float v3, v2, v4

    if-lez v3, :cond_4

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    iput-object v2, v0, Lcom/appodeal/ads/l5;->i:Ljava/lang/Float;

    :cond_4
    iget-object v2, v0, Lcom/appodeal/ads/l5;->j:Ljava/lang/String;

    const-string v3, "city"

    invoke-static {v1, v3, v2}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/appodeal/ads/l5;->j:Ljava/lang/String;

    iget-object v2, v0, Lcom/appodeal/ads/l5;->k:Ljava/lang/String;

    const-string v3, "zip"

    invoke-static {v1, v3, v2}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/l5;->k:Ljava/lang/String;

    :cond_5
    iget-object v1, v0, Lcom/appodeal/ads/l5;->d:Ljava/lang/String;

    const-string v2, "ip"

    invoke-static {p0, v2, v1}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/l5;->d:Ljava/lang/String;

    iget-object v1, v0, Lcom/appodeal/ads/l5;->e:Ljava/lang/String;

    const-string v2, "ipv6"

    invoke-static {p0, v2, v1}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/l5;->e:Ljava/lang/String;

    iget-object v1, v0, Lcom/appodeal/ads/l5;->f:Ljava/lang/String;

    const-string v2, "country_id"

    invoke-static {p0, v2, v1}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/appodeal/ads/l5;->f:Ljava/lang/String;

    iget-object v1, v0, Lcom/appodeal/ads/l5;->g:Ljava/lang/String;

    const-string v2, "address"

    invoke-static {p0, v2, v1}, Lcom/appodeal/ads/n5;->a(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/appodeal/ads/l5;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final getAge()Ljava/lang/Integer;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getCity()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->j:Ljava/lang/String;

    return-object v0
.end method

.method public final getCountryId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->f:Ljava/lang/String;

    return-object v0
.end method

.method public final getGender()Lcom/appodeal/ads/UserSettings$Gender;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/appodeal/ads/l5;->b:Lcom/appodeal/ads/UserSettings$Gender;

    return-object v0
.end method

.method public final getIp()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getIpv6()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getLat()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->h:Ljava/lang/Float;

    return-object v0
.end method

.method public final getLon()Ljava/lang/Float;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->i:Ljava/lang/Float;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getZip()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/l5;->k:Ljava/lang/String;

    return-object v0
.end method

.method public final setAge(I)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "age: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "UserSettings"

    const-string v3, "Set"

    invoke-static {v2, v3, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/l5;->c:Ljava/lang/Integer;

    return-object p0
.end method

.method public final setGender(Lcom/appodeal/ads/UserSettings$Gender;)Lcom/appodeal/ads/UserSettings;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-nez p1, :cond_0

    new-instance p1, Lcom/appodeal/ads/utils/exception_handler/a;

    const-string v0, "Unable to set gender to null"

    invoke-direct {p1, v0}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "gender: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "UserSettings"

    const-string v3, "Set"

    invoke-static {v2, v3, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iput-object p1, p0, Lcom/appodeal/ads/l5;->b:Lcom/appodeal/ads/UserSettings$Gender;

    return-object p0
.end method

.method public final setUserId(Ljava/lang/String;)Lcom/appodeal/ads/UserSettings;
    .locals 4

    if-nez p1, :cond_0

    new-instance p1, Lcom/appodeal/ads/utils/exception_handler/a;

    const-string v0, "Unable to set user id to null"

    invoke-direct {p1, v0}, Lcom/appodeal/ads/utils/exception_handler/a;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/Throwable;)V

    return-object p0

    :cond_0
    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "userId: %s"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/appodeal/ads/utils/Log$LogLevel;->verbose:Lcom/appodeal/ads/utils/Log$LogLevel;

    const-string v2, "UserSettings"

    const-string v3, "Set"

    invoke-static {v2, v3, v0, v1}, Lcom/appodeal/ads/utils/Log;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/appodeal/ads/utils/Log$LogLevel;)V

    iput-object p1, p0, Lcom/appodeal/ads/l5;->a:Ljava/lang/String;

    return-object p0
.end method
