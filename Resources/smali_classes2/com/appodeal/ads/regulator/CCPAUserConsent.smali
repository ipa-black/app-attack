.class public abstract enum Lcom/appodeal/ads/regulator/CCPAUserConsent;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/ads/regulator/UserConsent;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;,
        Lcom/appodeal/ads/regulator/CCPAUserConsent$OptIn;,
        Lcom/appodeal/ads/regulator/CCPAUserConsent$OptOut;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appodeal/ads/regulator/CCPAUserConsent;",
        ">;",
        "Lcom/appodeal/ads/regulator/UserConsent;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002R\u001a\u0010\u0008\u001a\u00020\u00038\u0016X\u0096\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000b\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcom/appodeal/ads/regulator/CCPAUserConsent;",
        "",
        "Lcom/appodeal/ads/regulator/UserConsent;",
        "Lcom/appodeal/consent/Consent$Zone;",
        "a",
        "Lcom/appodeal/consent/Consent$Zone;",
        "getZone",
        "()Lcom/appodeal/consent/Consent$Zone;",
        "zone",
        "Unknown",
        "OptIn",
        "OptOut",
        "apd_core"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appodeal/ads/regulator/CCPAUserConsent;

.field public static final enum OptIn:Lcom/appodeal/ads/regulator/CCPAUserConsent;

.field public static final enum OptOut:Lcom/appodeal/ads/regulator/CCPAUserConsent;

.field public static final enum Unknown:Lcom/appodeal/ads/regulator/CCPAUserConsent;


# instance fields
.field public final a:Lcom/appodeal/consent/Consent$Zone;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;

    invoke-direct {v0}, Lcom/appodeal/ads/regulator/CCPAUserConsent$Unknown;-><init>()V

    sput-object v0, Lcom/appodeal/ads/regulator/CCPAUserConsent;->Unknown:Lcom/appodeal/ads/regulator/CCPAUserConsent;

    new-instance v1, Lcom/appodeal/ads/regulator/CCPAUserConsent$OptIn;

    invoke-direct {v1}, Lcom/appodeal/ads/regulator/CCPAUserConsent$OptIn;-><init>()V

    sput-object v1, Lcom/appodeal/ads/regulator/CCPAUserConsent;->OptIn:Lcom/appodeal/ads/regulator/CCPAUserConsent;

    new-instance v2, Lcom/appodeal/ads/regulator/CCPAUserConsent$OptOut;

    invoke-direct {v2}, Lcom/appodeal/ads/regulator/CCPAUserConsent$OptOut;-><init>()V

    sput-object v2, Lcom/appodeal/ads/regulator/CCPAUserConsent;->OptOut:Lcom/appodeal/ads/regulator/CCPAUserConsent;

    const/4 v3, 0x3

    .line 1
    new-array v3, v3, [Lcom/appodeal/ads/regulator/CCPAUserConsent;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v1, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    .line 2
    sput-object v3, Lcom/appodeal/ads/regulator/CCPAUserConsent;->$VALUES:[Lcom/appodeal/ads/regulator/CCPAUserConsent;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    sget-object p1, Lcom/appodeal/consent/Consent$Zone;->CCPA:Lcom/appodeal/consent/Consent$Zone;

    iput-object p1, p0, Lcom/appodeal/ads/regulator/CCPAUserConsent;->a:Lcom/appodeal/consent/Consent$Zone;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/appodeal/ads/regulator/CCPAUserConsent;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appodeal/ads/regulator/CCPAUserConsent;
    .locals 1

    const-class v0, Lcom/appodeal/ads/regulator/CCPAUserConsent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appodeal/ads/regulator/CCPAUserConsent;

    return-object p0
.end method

.method public static values()[Lcom/appodeal/ads/regulator/CCPAUserConsent;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/regulator/CCPAUserConsent;->$VALUES:[Lcom/appodeal/ads/regulator/CCPAUserConsent;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appodeal/ads/regulator/CCPAUserConsent;

    return-object v0
.end method


# virtual methods
.method public getZone()Lcom/appodeal/consent/Consent$Zone;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/ads/regulator/CCPAUserConsent;->a:Lcom/appodeal/consent/Consent$Zone;

    return-object v0
.end method
