.class final Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;
.super Lcom/appodeal/ads/regulator/CCPAUserConsent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/regulator/CCPAUserConsent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Unknown"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\n\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0001\u0018\u00002\u00020\u0001\u00a8\u0006\u0002"
    }
    d2 = {
        "Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;",
        "Lcom/appodeal/ads/regulator/CCPAUserConsent;",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final b:Lcom/appodeal/consent/Consent$Status;


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const-string v2, "Unknown"

    invoke-direct {p0, v2, v0, v1}, Lcom/appodeal/ads/regulator/CCPAUserConsent;-><init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v0, Lcom/appodeal/consent/Consent$Status;->UNKNOWN:Lcom/appodeal/consent/Consent$Status;

    iput-object v0, p0, Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;->b:Lcom/appodeal/consent/Consent$Status;

    return-void
.end method


# virtual methods
.method public final getStatus()Lcom/appodeal/consent/Consent$Status;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;->b:Lcom/appodeal/consent/Consent$Status;

    return-object v0
.end method
