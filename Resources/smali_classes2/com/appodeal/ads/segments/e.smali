.class public final Lcom/appodeal/ads/segments/e;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/segments/f;


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/segments/f;)V
    .locals 0

    iput-object p1, p0, Lcom/appodeal/ads/segments/e;->a:Lcom/appodeal/ads/segments/f;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/segments/e;->a:Lcom/appodeal/ads/segments/f;

    .line 2
    iget-object v0, v0, Lcom/appodeal/ads/segments/f;->a:Lcom/appodeal/ads/storage/a;

    .line 3
    invoke-interface {v0}, Lcom/appodeal/ads/storage/a;->b()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/appodeal/ads/segments/e;->a:Lcom/appodeal/ads/segments/f;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 4
    iget-object v1, v1, Lcom/appodeal/ads/segments/f;->a:Lcom/appodeal/ads/storage/a;

    .line 5
    invoke-interface {v1, v2}, Lcom/appodeal/ads/storage/a;->a(I)V

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
