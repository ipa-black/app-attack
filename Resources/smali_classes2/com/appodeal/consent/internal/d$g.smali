.class public final Lcom/appodeal/consent/internal/d$g;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/consent/internal/d;-><init>(Landroid/content/Context;Lcom/appodeal/consent/internal/d$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/consent/view/b;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/consent/internal/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/consent/internal/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/consent/internal/d$g;->a:Lcom/appodeal/consent/internal/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    .line 1
    new-instance v6, Lcom/appodeal/consent/view/b;

    iget-object v2, p0, Lcom/appodeal/consent/internal/d$g;->a:Lcom/appodeal/consent/internal/d;

    .line 2
    iget-object v1, v2, Lcom/appodeal/consent/internal/d;->a:Landroid/content/Context;

    .line 3
    sget-object v3, Lcom/appodeal/consent/internal/g;->c:Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getConsent()Lcom/appodeal/consent/Consent;

    move-result-object v4

    invoke-static {}, Lcom/appodeal/consent/ConsentManager;->getCustomVendors()Ljava/util/Map;

    move-result-object v5

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/appodeal/consent/view/b;-><init>(Landroid/content/Context;Lcom/appodeal/consent/internal/d;Ljava/lang/String;Lcom/appodeal/consent/Consent;Ljava/util/Map;)V

    return-object v6
.end method
