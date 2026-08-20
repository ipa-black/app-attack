.class public final Lcom/appodeal/ads/context/f$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/context/f;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/appodeal/ads/context/h;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/context/f;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/context/f;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/context/f$a;->a:Lcom/appodeal/ads/context/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    new-instance v0, Lcom/appodeal/ads/context/h;

    new-instance v1, Lcom/appodeal/ads/context/d;

    iget-object v2, p0, Lcom/appodeal/ads/context/f$a;->a:Lcom/appodeal/ads/context/f;

    invoke-direct {v1, v2}, Lcom/appodeal/ads/context/d;-><init>(Lcom/appodeal/ads/context/f;)V

    new-instance v2, Lcom/appodeal/ads/context/e;

    iget-object v3, p0, Lcom/appodeal/ads/context/f$a;->a:Lcom/appodeal/ads/context/f;

    invoke-direct {v2, v3}, Lcom/appodeal/ads/context/e;-><init>(Lcom/appodeal/ads/context/f;)V

    invoke-direct {v0, v1, v2}, Lcom/appodeal/ads/context/h;-><init>(Lcom/appodeal/ads/context/d;Lcom/appodeal/ads/context/e;)V

    return-object v0
.end method
