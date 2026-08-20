.class public final Lcom/appodeal/ads/k5$a;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/appodeal/ads/k5;-><init>(Lcom/appodeal/ads/s;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/appodeal/ads/k5;

.field public final synthetic b:Lcom/appodeal/ads/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/appodeal/ads/s<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/appodeal/ads/k5;Lcom/appodeal/ads/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/appodeal/ads/k5;",
            "Lcom/appodeal/ads/s<",
            "*>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/appodeal/ads/k5$a;->a:Lcom/appodeal/ads/k5;

    iput-object p2, p0, Lcom/appodeal/ads/k5$a;->b:Lcom/appodeal/ads/s;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/appodeal/ads/k5$a;->a:Lcom/appodeal/ads/k5;

    iget-object v1, p0, Lcom/appodeal/ads/k5$a;->b:Lcom/appodeal/ads/s;

    invoke-virtual {v1}, Lcom/appodeal/ads/s;->a()Ljava/lang/String;

    move-result-object v1

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v1, :cond_5

    .line 3
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "debug_native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "debug_banner_320"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :sswitch_2
    const-string v0, "video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :sswitch_3
    const-string v0, "debug"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :sswitch_4
    const-string v0, "banner_320"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_banner"

    goto :goto_1

    :sswitch_5
    const-string v0, "native"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_native"

    goto :goto_1

    :sswitch_6
    const-string v0, "debug_video"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_video"

    goto :goto_1

    :sswitch_7
    const-string v0, "banner"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_interstitial"

    goto :goto_1

    :sswitch_8
    const-string v0, "debug_mrec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :sswitch_9
    const-string v0, "banner_mrec"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_mrec"

    goto :goto_1

    :cond_5
    :goto_0
    const-string v0, "http://herokuapp.appodeal.com/android_waterfall_rewarded_video"

    .line 4
    :goto_1
    iget-object v1, p0, Lcom/appodeal/ads/k5$a;->b:Lcom/appodeal/ads/s;

    .line 5
    iget-boolean v1, v1, Lcom/appodeal/ads/s;->b:Z

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x71aae5ca -> :sswitch_9
        -0x6db29c91 -> :sswitch_8
        -0x533a80d4 -> :sswitch_7
        -0x48263c71 -> :sswitch_6
        -0x3ebdafe9 -> :sswitch_5
        -0x3d7a01e2 -> :sswitch_4
        0x5b09653 -> :sswitch_3
        0x6b0147b -> :sswitch_2
        0x25329b8a -> :sswitch_1
        0x354e8383 -> :sswitch_0
    .end sparse-switch
.end method
