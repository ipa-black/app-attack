.class public final Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;
.super Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/advertising/AdvertisingInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultAdvertisingProfile"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;",
        "Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;",
        "apd_advertising"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    invoke-direct {v0}, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;-><init>()V

    sput-object v0, Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;->INSTANCE:Lcom/appodeal/advertising/AdvertisingInfo$DefaultAdvertisingProfile;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/appodeal/advertising/AdvertisingInfo$AdvertisingProfile;-><init>()V

    return-void
.end method
