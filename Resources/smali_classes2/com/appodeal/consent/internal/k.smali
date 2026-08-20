.class public final Lcom/appodeal/consent/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/consent/internal/k$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lorg/json/JSONObject;)Lcom/appodeal/consent/internal/k$a;
    .locals 3

    const-string v0, "jsonObject"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "consent"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/appodeal/consent/Consent;

    invoke-direct {v2, v0}, Lcom/appodeal/consent/Consent;-><init>(Lorg/json/JSONObject;)V

    :goto_0
    const-string v0, "form"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    if-nez p0, :cond_1

    move-object v0, v1

    goto :goto_1

    :cond_1
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "show"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_2
    new-instance p0, Lcom/appodeal/consent/internal/k$a;

    invoke-direct {p0, v2, v0, v1}, Lcom/appodeal/consent/internal/k$a;-><init>(Lcom/appodeal/consent/Consent;Ljava/lang/String;Ljava/lang/Boolean;)V

    return-object p0
.end method
