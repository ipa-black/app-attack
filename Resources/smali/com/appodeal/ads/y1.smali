.class public final Lcom/appodeal/ads/y1;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)V
    .locals 1

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "refresh"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/appodeal/ads/r0;->d()V

    :cond_1
    const-string v0, "session_drop_store"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_2

    invoke-static {}, Lcom/appodeal/ads/q4;->m()Lcom/appodeal/ads/utils/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/appodeal/ads/utils/x;->b()V

    :cond_2
    return-void
.end method
