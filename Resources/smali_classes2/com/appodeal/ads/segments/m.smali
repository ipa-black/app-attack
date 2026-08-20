.class public final Lcom/appodeal/ads/segments/m;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Lcom/appodeal/ads/modules/common/internal/adtype/AdType;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/appodeal/ads/segments/l;->a:[I

    invoke-virtual {p0}, Lcom/appodeal/ads/modules/common/internal/adtype/AdType;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    const-string p0, "native"

    return-object p0

    :pswitch_1
    const-string p0, "mrec"

    return-object p0

    :pswitch_2
    const-string p0, "banner"

    return-object p0

    :pswitch_3
    const-string p0, "rewarded_video"

    return-object p0

    :pswitch_4
    const-string p0, "video"

    return-object p0

    :pswitch_5
    const-string p0, "interstitial"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
