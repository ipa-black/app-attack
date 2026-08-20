.class public final Lcom/appodeal/consent/ConsentForm;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/appodeal/consent/internal/d$a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u001b\u0008\u0007\u0012\u0006\u0010\u0016\u001a\u00020\u0015\u0012\u0008\u0008\u0002\u0010\u0010\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0017\u0010\u0018J\u0006\u0010\u0003\u001a\u00020\u0002J\u0006\u0010\u0004\u001a\u00020\u0002J\u0008\u0010\u0005\u001a\u00020\u0002H\u0016J\u0010\u0010\u0008\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0002H\u0016J\u0008\u0010\n\u001a\u00020\u0002H\u0016R\u0017\u0010\u0010\u001a\u00020\u000b8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0011\u0010\u0012\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0012\u0010\u0013R\u0011\u0010\u0014\u001a\u00020\u00118F\u00a2\u0006\u0006\u001a\u0004\u0008\u0014\u0010\u0013\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/appodeal/consent/ConsentForm;",
        "Lcom/appodeal/consent/internal/d$a;",
        "",
        "load",
        "show",
        "onLoaded",
        "Lcom/appodeal/consent/ConsentManagerError;",
        "error",
        "onError",
        "onOpened",
        "onClosed",
        "Lcom/appodeal/consent/IConsentFormListener;",
        "a",
        "Lcom/appodeal/consent/IConsentFormListener;",
        "getListener",
        "()Lcom/appodeal/consent/IConsentFormListener;",
        "listener",
        "",
        "isLoaded",
        "()Z",
        "isShowing",
        "Landroid/content/Context;",
        "context",
        "<init>",
        "(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;)V",
        "apd_consent"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
.end annotation


# instance fields
.field public final a:Lcom/appodeal/consent/IConsentFormListener;

.field public final b:Lcom/appodeal/consent/internal/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/appodeal/consent/ConsentForm;-><init>(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    new-instance p2, Lcom/appodeal/consent/internal/d;

    invoke-direct {p2, p1, p0}, Lcom/appodeal/consent/internal/d;-><init>(Landroid/content/Context;Lcom/appodeal/consent/internal/d$a;)V

    iput-object p2, p0, Lcom/appodeal/consent/ConsentForm;->b:Lcom/appodeal/consent/internal/d;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    new-instance p2, Lcom/appodeal/consent/ConsentFormListener;

    invoke-direct {p2}, Lcom/appodeal/consent/ConsentFormListener;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/appodeal/consent/ConsentForm;-><init>(Landroid/content/Context;Lcom/appodeal/consent/IConsentFormListener;)V

    return-void
.end method


# virtual methods
.method public final getListener()Lcom/appodeal/consent/IConsentFormListener;
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    return-object v0
.end method

.method public final isLoaded()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->b:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->d()Z

    move-result v0

    return v0
.end method

.method public final isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->b:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->f()Z

    move-result v0

    return v0
.end method

.method public final load()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->b:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->g()V

    return-void
.end method

.method public onClosed()V
    .locals 2

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/appodeal/consent/IConsentFormListener;->onConsentFormClosed(Lcom/appodeal/consent/Consent;)V

    return-void
.end method

.method public onError(Lcom/appodeal/consent/ConsentManagerError;)V
    .locals 1

    const-string v0, "error"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    invoke-interface {v0, p1}, Lcom/appodeal/consent/IConsentFormListener;->onConsentFormError(Lcom/appodeal/consent/ConsentManagerError;)V

    return-void
.end method

.method public onLoaded()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    invoke-interface {v0, p0}, Lcom/appodeal/consent/IConsentFormListener;->onConsentFormLoaded(Lcom/appodeal/consent/ConsentForm;)V

    return-void
.end method

.method public onOpened()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->a:Lcom/appodeal/consent/IConsentFormListener;

    invoke-interface {v0}, Lcom/appodeal/consent/IConsentFormListener;->onConsentFormOpened()V

    return-void
.end method

.method public final show()V
    .locals 1

    iget-object v0, p0, Lcom/appodeal/consent/ConsentForm;->b:Lcom/appodeal/consent/internal/d;

    invoke-virtual {v0}, Lcom/appodeal/consent/internal/d;->h()V

    return-void
.end method
