.class public final Lcom/appodeal/ads/regulator/d$c;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/regulator/d;-><init>(Landroid/content/Context;Lcom/appodeal/ads/regulator/usecases/a;Lkotlinx/coroutines/CoroutineScope;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/regulator/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/regulator/d;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/regulator/d;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/regulator/d$c;->a:Lcom/appodeal/ads/regulator/d;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    new-instance v0, Lcom/appodeal/ads/regulator/e;

    iget-object v1, p0, Lcom/appodeal/ads/regulator/d$c;->a:Lcom/appodeal/ads/regulator/d;

    invoke-direct {v0, v1}, Lcom/appodeal/ads/regulator/e;-><init>(Lcom/appodeal/ads/regulator/d;)V

    return-object v0
.end method
