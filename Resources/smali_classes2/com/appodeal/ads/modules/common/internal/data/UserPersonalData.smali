.class public interface abstract Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\u0008f\u0018\u00002\u00020\u0001J\u000f\u0010\u0002\u001a\u0004\u0018\u00010\u0003H\'\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0006H&J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\t\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\n\u001a\u0004\u0018\u00010\u0006H&J\u0012\u0010\u000b\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u000c\u001a\u00020\rH&J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\u000f\u001a\u00020\u0008H&J\n\u0010\u0010\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0008H&J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0008H&J\u0008\u0010\u0014\u001a\u00020\u0015H&\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/appodeal/ads/modules/common/internal/data/UserPersonalData;",
        "",
        "getAge",
        "",
        "()Ljava/lang/Integer;",
        "getCachedToken",
        "Lorg/json/JSONObject;",
        "getCity",
        "",
        "getCountry",
        "getExtraData",
        "getHttpAgent",
        "context",
        "Landroid/content/Context;",
        "getIabConsentString",
        "getIfa",
        "getIp",
        "getUSPrivacyString",
        "getUserId",
        "getZip",
        "wasAdIdGenerated",
        "",
        "apd_internal"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# virtual methods
.method public abstract getAge()Ljava/lang/Integer;
    .annotation runtime Lkotlin/Deprecated;
        message = ""
    .end annotation
.end method

.method public abstract getCachedToken()Lorg/json/JSONObject;
.end method

.method public abstract getCity()Ljava/lang/String;
.end method

.method public abstract getCountry()Ljava/lang/String;
.end method

.method public abstract getExtraData()Lorg/json/JSONObject;
.end method

.method public abstract getHttpAgent(Landroid/content/Context;)Ljava/lang/String;
.end method

.method public abstract getIabConsentString()Ljava/lang/String;
.end method

.method public abstract getIfa()Ljava/lang/String;
.end method

.method public abstract getIp()Ljava/lang/String;
.end method

.method public abstract getUSPrivacyString()Ljava/lang/String;
.end method

.method public abstract getUserId()Ljava/lang/String;
.end method

.method public abstract getZip()Ljava/lang/String;
.end method

.method public abstract wasAdIdGenerated()Z
.end method
