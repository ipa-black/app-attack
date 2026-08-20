.class public final Lcom/appodeal/consent/ConsentManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/appodeal/consent/ConsentManager$Storage;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008%\n\u0002\u0010%\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001:\u0001CJF\u0010\u000f\u001a\u00020\u000e2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\n\u0008\u0002\u0010\t\u001a\u0004\u0018\u00010\u00082\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\n2\n\u0008\u0002\u0010\r\u001a\u0004\u0018\u00010\u000cH\u0007J\u0012\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007R(\u0010\u001c\u001a\u00020\u00138\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0018\n\u0004\u0008\u0014\u0010\u0015\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R \u0010\"\u001a\u00020\u00048\u0006X\u0087D\u00a2\u0006\u0012\n\u0004\u0008\u001d\u0010\u001e\u0012\u0004\u0008!\u0010\u001b\u001a\u0004\u0008\u001f\u0010 R\u001a\u0010&\u001a\u00020\u00088FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008%\u0010\u001b\u001a\u0004\u0008#\u0010$R\u001a\u0010*\u001a\u00020\u000c8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008)\u0010\u001b\u001a\u0004\u0008\'\u0010(R\u001a\u0010.\u001a\u00020\n8FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u0008-\u0010\u001b\u001a\u0004\u0008+\u0010,R\u001a\u00101\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00080\u0010\u001b\u001a\u0004\u0008/\u0010 R\u001a\u00104\u001a\u00020\u00048FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00083\u0010\u001b\u001a\u0004\u00082\u0010 R\u001a\u00108\u001a\u00020\u00118FX\u0087\u0004\u00a2\u0006\u000c\u0012\u0004\u00087\u0010\u001b\u001a\u0004\u00085\u00106R,\u0010:\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u0001098\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008:\u0010;\u0012\u0004\u0008>\u0010\u001b\u001a\u0004\u0008<\u0010=R,\u0010@\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020?098\u0006X\u0087\u0004\u00a2\u0006\u0012\n\u0004\u0008@\u0010;\u0012\u0004\u0008B\u0010\u001b\u001a\u0004\u0008A\u0010=\u00a8\u0006D"
    }
    d2 = {
        "Lcom/appodeal/consent/ConsentManager;",
        "",
        "Landroid/content/Context;",
        "context",
        "",
        "appKey",
        "Lcom/appodeal/consent/IConsentInfoUpdateListener;",
        "listener",
        "Lcom/appodeal/consent/Consent;",
        "publisherConsent",
        "Lcom/appodeal/consent/Consent$Status;",
        "status",
        "Lcom/appodeal/consent/Consent$Zone;",
        "zone",
        "",
        "requestConsentInfoUpdate",
        "bundle",
        "",
        "hasConsentForVendor",
        "Lcom/appodeal/consent/ConsentManager$Storage;",
        "a",
        "Lcom/appodeal/consent/ConsentManager$Storage;",
        "getStorage",
        "()Lcom/appodeal/consent/ConsentManager$Storage;",
        "setStorage",
        "(Lcom/appodeal/consent/ConsentManager$Storage;)V",
        "getStorage$annotations",
        "()V",
        "storage",
        "d",
        "Ljava/lang/String;",
        "getVersion",
        "()Ljava/lang/String;",
        "getVersion$annotations",
        "version",
        "getConsent",
        "()Lcom/appodeal/consent/Consent;",
        "getConsent$annotations",
        "consent",
        "getConsentZone",
        "()Lcom/appodeal/consent/Consent$Zone;",
        "getConsentZone$annotations",
        "consentZone",
        "getConsentStatus",
        "()Lcom/appodeal/consent/Consent$Status;",
        "getConsentStatus$annotations",
        "consentStatus",
        "getIABConsentString",
        "getIABConsentString$annotations",
        "IABConsentString",
        "getUSPrivacyString",
        "getUSPrivacyString$annotations",
        "USPrivacyString",
        "getShouldShow",
        "()Z",
        "getShouldShow$annotations",
        "shouldShow",
        "",
        "extraData",
        "Ljava/util/Map;",
        "getExtraData",
        "()Ljava/util/Map;",
        "getExtraData$annotations",
        "Lcom/appodeal/consent/Vendor;",
        "customVendors",
        "getCustomVendors",
        "getCustomVendors$annotations",
        "Storage",
        "apd_consent"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/appodeal/consent/ConsentManager;

.field public static a:Lcom/appodeal/consent/ConsentManager$Storage;

.field public static final b:Ljava/util/LinkedHashMap;

.field public static final c:Ljava/util/LinkedHashMap;

.field public static final d:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/appodeal/consent/ConsentManager;

    invoke-direct {v0}, Lcom/appodeal/consent/ConsentManager;-><init>()V

    sput-object v0, Lcom/appodeal/consent/ConsentManager;->INSTANCE:Lcom/appodeal/consent/ConsentManager;

    sget-object v0, Lcom/appodeal/consent/ConsentManager$Storage;->NONE:Lcom/appodeal/consent/ConsentManager$Storage;

    sput-object v0, Lcom/appodeal/consent/ConsentManager;->a:Lcom/appodeal/consent/ConsentManager$Storage;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/appodeal/consent/ConsentManager;->b:Ljava/util/LinkedHashMap;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/appodeal/consent/ConsentManager;->c:Ljava/util/LinkedHashMap;

    const-string v0, "3.0.1"

    sput-object v0, Lcom/appodeal/consent/ConsentManager;->d:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getConsent()Lcom/appodeal/consent/Consent;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    .line 1
    sget-object v0, Lcom/appodeal/consent/internal/g;->e:Lcom/appodeal/consent/Consent;

    return-object v0
.end method

.method public static synthetic getConsent$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getConsentStatus()Lcom/appodeal/consent/Consent$Status;
    .locals 1

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getStatus()Lcom/appodeal/consent/Consent$Status;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getConsentStatus$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getConsentZone()Lcom/appodeal/consent/Consent$Zone;
    .locals 1

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getZone()Lcom/appodeal/consent/Consent$Zone;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getConsentZone$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getCustomVendors()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/appodeal/consent/Vendor;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/appodeal/consent/ConsentManager;->c:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static synthetic getCustomVendors$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getExtraData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/appodeal/consent/ConsentManager;->b:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static synthetic getExtraData$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getIABConsentString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getIABConsentString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getIABConsentString$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getShouldShow()Z
    .locals 1

    sget-object v0, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    .line 1
    sget-boolean v0, Lcom/appodeal/consent/internal/g;->d:Z

    return v0
.end method

.method public static synthetic getShouldShow$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getStorage()Lcom/appodeal/consent/ConsentManager$Storage;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/ConsentManager;->a:Lcom/appodeal/consent/ConsentManager$Storage;

    return-object v0
.end method

.method public static synthetic getStorage$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getUSPrivacyString()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/consent/Consent;->getUSPrivacyString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic getUSPrivacyString$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final getVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/consent/ConsentManager;->d:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic getVersion$annotations()V
    .locals 0
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    return-void
.end method

.method public static final hasConsentForVendor(Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/appodeal/consent/Consent;->hasConsentForVendor(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static final requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x3c

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    invoke-static/range {v1 .. v8}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate$default(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/Object;)V

    return-void
.end method

.method public static final requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x38

    const/4 v8, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-static/range {v1 .. v8}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate$default(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/Object;)V

    return-void
.end method

.method public static final requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x30

    const/4 v8, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-static/range {v1 .. v8}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate$default(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/Object;)V

    return-void
.end method

.method public static final requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;)V
    .locals 9
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v7, 0x20

    const/4 v8, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-static/range {v1 .. v8}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate$default(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/Object;)V

    return-void
.end method

.method public static final requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appKey"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lcom/appodeal/consent/internal/g;->a:Lkotlin/Lazy;

    invoke-static/range {p0 .. p5}, Lcom/appodeal/consent/internal/g;->a(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V

    return-void
.end method

.method public static synthetic requestConsentInfoUpdate$default(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;ILjava/lang/Object;)V
    .locals 6

    and-int/lit8 p7, p6, 0x4

    if-eqz p7, :cond_0

    new-instance p2, Lcom/appodeal/consent/ConsentInfoUpdateListener;

    invoke-direct {p2}, Lcom/appodeal/consent/ConsentInfoUpdateListener;-><init>()V

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x8

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    move-object v3, p7

    goto :goto_0

    :cond_1
    move-object v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_2

    move-object v4, p7

    goto :goto_1

    :cond_2
    move-object v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x20

    if-eqz p2, :cond_3

    move-object v5, p7

    goto :goto_2

    :cond_3
    move-object v5, p5

    :goto_2
    move-object v0, p0

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/appodeal/consent/ConsentManager;->requestConsentInfoUpdate(Landroid/content/Context;Ljava/lang/String;Lcom/appodeal/consent/IConsentInfoUpdateListener;Lcom/appodeal/consent/Consent;Lcom/appodeal/consent/Consent$Status;Lcom/appodeal/consent/Consent$Zone;)V

    return-void
.end method

.method public static final setStorage(Lcom/appodeal/consent/ConsentManager$Storage;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    sput-object p0, Lcom/appodeal/consent/ConsentManager;->a:Lcom/appodeal/consent/ConsentManager$Storage;

    return-void
.end method
