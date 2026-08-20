.class public final Lcom/appodeal/ads/api/AdStats$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdStats.java"

# interfaces
.implements Lcom/appodeal/ads/api/AdStatsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/AdStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/AdStats$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/AdStatsOrBuilder;"
    }
.end annotation


# instance fields
.field private banner320Click_:I

.field private banner320Show_:I

.field private bannerClick_:I

.field private bannerMrecClick_:I

.field private bannerMrecShow_:I

.field private bannerShow_:I

.field private click_:I

.field private finish_:I

.field private nativeClick_:I

.field private nativeShow_:I

.field private rewardedVideoClick_:I

.field private rewardedVideoFinish_:I

.field private rewardedVideoShow_:I

.field private show_:I

.field private videoClick_:I

.field private videoFinish_:I

.field private videoShow_:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 715
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 716
    invoke-direct {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/AdStats$1;)V
    .locals 0

    .line 697
    invoke-direct {p0}, Lcom/appodeal/ads/api/AdStats$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 721
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 722
    invoke-direct {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/AdStats$1;)V
    .locals 0

    .line 697
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 703
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_AdStats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 726
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->access$200()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 843
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/AdStats;
    .locals 2

    .line 782
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->buildPartial()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    .line 783
    invoke-virtual {v0}, Lcom/appodeal/ads/api/AdStats;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 784
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/AdStats$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->build()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->build()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/AdStats;
    .locals 2

    .line 791
    new-instance v0, Lcom/appodeal/ads/api/AdStats;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/AdStats;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/AdStats$1;)V

    .line 792
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->show_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$402(Lcom/appodeal/ads/api/AdStats;I)I

    .line 793
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->click_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$502(Lcom/appodeal/ads/api/AdStats;I)I

    .line 794
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->finish_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$602(Lcom/appodeal/ads/api/AdStats;I)I

    .line 795
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerShow_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$702(Lcom/appodeal/ads/api/AdStats;I)I

    .line 796
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerClick_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$802(Lcom/appodeal/ads/api/AdStats;I)I

    .line 797
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoShow_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$902(Lcom/appodeal/ads/api/AdStats;I)I

    .line 798
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoClick_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1002(Lcom/appodeal/ads/api/AdStats;I)I

    .line 799
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoFinish_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1102(Lcom/appodeal/ads/api/AdStats;I)I

    .line 800
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoShow_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1202(Lcom/appodeal/ads/api/AdStats;I)I

    .line 801
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoClick_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1302(Lcom/appodeal/ads/api/AdStats;I)I

    .line 802
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoFinish_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1402(Lcom/appodeal/ads/api/AdStats;I)I

    .line 803
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Show_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1502(Lcom/appodeal/ads/api/AdStats;I)I

    .line 804
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Click_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1602(Lcom/appodeal/ads/api/AdStats;I)I

    .line 805
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecShow_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1702(Lcom/appodeal/ads/api/AdStats;I)I

    .line 806
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecClick_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1802(Lcom/appodeal/ads/api/AdStats;I)I

    .line 807
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeShow_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$1902(Lcom/appodeal/ads/api/AdStats;I)I

    .line 808
    iget v1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeClick_:I

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/AdStats;->access$2002(Lcom/appodeal/ads/api/AdStats;I)I

    .line 809
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->buildPartial()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->buildPartial()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 731
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 732
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->show_:I

    .line 734
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->click_:I

    .line 736
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->finish_:I

    .line 738
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerShow_:I

    .line 740
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerClick_:I

    .line 742
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoShow_:I

    .line 744
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoClick_:I

    .line 746
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoFinish_:I

    .line 748
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoShow_:I

    .line 750
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoClick_:I

    .line 752
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoFinish_:I

    .line 754
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Show_:I

    .line 756
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Click_:I

    .line 758
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecShow_:I

    .line 760
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecClick_:I

    .line 762
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeShow_:I

    .line 764
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeClick_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clear()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clear()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clear()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clear()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearBanner320Click()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1335
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Click_:I

    .line 1336
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBanner320Show()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1304
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Show_:I

    .line 1305
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBannerClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1087
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerClick_:I

    .line 1088
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBannerMrecClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1397
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecClick_:I

    .line 1398
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBannerMrecShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1366
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecShow_:I

    .line 1367
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBannerShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1056
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerShow_:I

    .line 1057
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 994
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->click_:I

    .line 995
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 826
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFinish()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1025
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->finish_:I

    .line 1026
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNativeClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1459
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeClick_:I

    .line 1460
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNativeShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1428
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeShow_:I

    .line 1429
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 831
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearRewardedVideoClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1242
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoClick_:I

    .line 1243
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRewardedVideoFinish()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1273
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoFinish_:I

    .line 1274
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearRewardedVideoShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1211
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoShow_:I

    .line 1212
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 963
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->show_:I

    .line 964
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideoClick()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1149
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoClick_:I

    .line 1150
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideoFinish()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1180
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoFinish_:I

    .line 1181
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVideoShow()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 1118
    iput v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoShow_:I

    .line 1119
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 815
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->clone()Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getBanner320Click()I
    .locals 1

    .line 1316
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Click_:I

    return v0
.end method

.method public getBanner320Show()I
    .locals 1

    .line 1285
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Show_:I

    return v0
.end method

.method public getBannerClick()I
    .locals 1

    .line 1068
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerClick_:I

    return v0
.end method

.method public getBannerMrecClick()I
    .locals 1

    .line 1378
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecClick_:I

    return v0
.end method

.method public getBannerMrecShow()I
    .locals 1

    .line 1347
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecShow_:I

    return v0
.end method

.method public getBannerShow()I
    .locals 1

    .line 1037
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerShow_:I

    return v0
.end method

.method public getClick()I
    .locals 1

    .line 975
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->click_:I

    return v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;
    .locals 1

    .line 777
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstance()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 697
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 772
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_AdStats_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFinish()I
    .locals 1

    .line 1006
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->finish_:I

    return v0
.end method

.method public getNativeClick()I
    .locals 1

    .line 1440
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeClick_:I

    return v0
.end method

.method public getNativeShow()I
    .locals 1

    .line 1409
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeShow_:I

    return v0
.end method

.method public getRewardedVideoClick()I
    .locals 1

    .line 1223
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoClick_:I

    return v0
.end method

.method public getRewardedVideoFinish()I
    .locals 1

    .line 1254
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoFinish_:I

    return v0
.end method

.method public getRewardedVideoShow()I
    .locals 1

    .line 1192
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoShow_:I

    return v0
.end method

.method public getShow()I
    .locals 1

    .line 944
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->show_:I

    return v0
.end method

.method public getVideoClick()I
    .locals 1

    .line 1130
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoClick_:I

    return v0
.end method

.method public getVideoFinish()I
    .locals 1

    .line 1161
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoFinish_:I

    return v0
.end method

.method public getVideoShow()I
    .locals 1

    .line 1099
    iget v0, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoShow_:I

    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 709
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_AdStats_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/AdStats;

    const-class v2, Lcom/appodeal/ads/api/AdStats$Builder;

    .line 710
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 856
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->getDefaultInstance()Lcom/appodeal/ads/api/AdStats;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 857
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getShow()I

    move-result v0

    if-eqz v0, :cond_1

    .line 858
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 860
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getClick()I

    move-result v0

    if-eqz v0, :cond_2

    .line 861
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 863
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getFinish()I

    move-result v0

    if-eqz v0, :cond_3

    .line 864
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getFinish()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 866
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerShow()I

    move-result v0

    if-eqz v0, :cond_4

    .line 867
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 869
    :cond_4
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerClick()I

    move-result v0

    if-eqz v0, :cond_5

    .line 870
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 872
    :cond_5
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoShow()I

    move-result v0

    if-eqz v0, :cond_6

    .line 873
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 875
    :cond_6
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoClick()I

    move-result v0

    if-eqz v0, :cond_7

    .line 876
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 878
    :cond_7
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoFinish()I

    move-result v0

    if-eqz v0, :cond_8

    .line 879
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getVideoFinish()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 881
    :cond_8
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoShow()I

    move-result v0

    if-eqz v0, :cond_9

    .line 882
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 884
    :cond_9
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoClick()I

    move-result v0

    if-eqz v0, :cond_a

    .line 885
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 887
    :cond_a
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoFinish()I

    move-result v0

    if-eqz v0, :cond_b

    .line 888
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getRewardedVideoFinish()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setRewardedVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 890
    :cond_b
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Show()I

    move-result v0

    if-eqz v0, :cond_c

    .line 891
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Show()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBanner320Show(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 893
    :cond_c
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Click()I

    move-result v0

    if-eqz v0, :cond_d

    .line 894
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBanner320Click()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBanner320Click(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 896
    :cond_d
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecShow()I

    move-result v0

    if-eqz v0, :cond_e

    .line 897
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerMrecShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 899
    :cond_e
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecClick()I

    move-result v0

    if-eqz v0, :cond_f

    .line 900
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getBannerMrecClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setBannerMrecClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 902
    :cond_f
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeShow()I

    move-result v0

    if-eqz v0, :cond_10

    .line 903
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeShow()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setNativeShow(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 905
    :cond_10
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeClick()I

    move-result v0

    if-eqz v0, :cond_11

    .line 906
    invoke-virtual {p1}, Lcom/appodeal/ads/api/AdStats;->getNativeClick()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->setNativeClick(I)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 908
    :cond_11
    invoke-static {p1}, Lcom/appodeal/ads/api/AdStats;->access$2100(Lcom/appodeal/ads/api/AdStats;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 909
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 925
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/AdStats;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 931
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 927
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/AdStats;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 928
    :try_start_2
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->unwrapIOException()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    move-object v0, p2

    :goto_0
    if-eqz v0, :cond_1

    .line 931
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    .line 933
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 1

    .line 847
    instance-of v0, p1, Lcom/appodeal/ads/api/AdStats;

    if-eqz v0, :cond_0

    .line 848
    check-cast p1, Lcom/appodeal/ads/api/AdStats;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/appodeal/ads/api/AdStats;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1

    .line 850
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1472
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setBanner320Click(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1325
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Click_:I

    .line 1326
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setBanner320Show(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1294
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->banner320Show_:I

    .line 1295
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setBannerClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1077
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerClick_:I

    .line 1078
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setBannerMrecClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1387
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecClick_:I

    .line 1388
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setBannerMrecShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1356
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerMrecShow_:I

    .line 1357
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setBannerShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1046
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->bannerShow_:I

    .line 1047
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 984
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->click_:I

    .line 985
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 821
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/AdStats$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1015
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->finish_:I

    .line 1016
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setNativeClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1449
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeClick_:I

    .line 1450
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setNativeShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1418
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->nativeShow_:I

    .line 1419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 837
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/AdStats$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/AdStats$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRewardedVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1232
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoClick_:I

    .line 1233
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setRewardedVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1263
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoFinish_:I

    .line 1264
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setRewardedVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1201
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->rewardedVideoShow_:I

    .line 1202
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 953
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->show_:I

    .line 954
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1466
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/AdStats$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 697
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/AdStats$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/AdStats$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setVideoClick(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1139
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoClick_:I

    .line 1140
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setVideoFinish(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1170
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoFinish_:I

    .line 1171
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method

.method public setVideoShow(I)Lcom/appodeal/ads/api/AdStats$Builder;
    .locals 0

    .line 1108
    iput p1, p0, Lcom/appodeal/ads/api/AdStats$Builder;->videoShow_:I

    .line 1109
    invoke-virtual {p0}, Lcom/appodeal/ads/api/AdStats$Builder;->onChanged()V

    return-object p0
.end method
