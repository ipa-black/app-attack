.class public final Lcom/appodeal/ads/api/Extra$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Extra.java"

# interfaces
.implements Lcom/appodeal/ads/api/ExtraOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Extra;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Extra$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/ExtraOrBuilder;"
    }
.end annotation


# instance fields
.field private adUnitStat_:Ljava/lang/Object;

.field private apps_:Lcom/explorestack/protobuf/LazyStringList;

.field private bitField0_:I

.field private priceFloor_:F

.field private sa_:Lcom/explorestack/protobuf/LazyStringList;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 515
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 727
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 823
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 969
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 516
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Extra$1;)V
    .locals 0

    .line 497
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 521
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 727
    const-string p1, ""

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 823
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 969
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 522
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Extra$1;)V
    .locals 0

    .line 497
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private ensureAppsIsMutable()V
    .locals 2

    .line 825
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 826
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 827
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureSaIsMutable()V
    .locals 2

    .line 971
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 972
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 973
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 503
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Extra_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 526
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->access$200()Z

    return-void
.end method


# virtual methods
.method public addAllApps(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appodeal/ads/api/Extra$Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 928
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureAppsIsMutable()V

    .line 929
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 931
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllSa(Ljava/lang/Iterable;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/appodeal/ads/api/Extra$Builder;"
        }
    .end annotation

    .line 1074
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureSaIsMutable()V

    .line 1075
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 1077
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public addApps(Ljava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 910
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 912
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureAppsIsMutable()V

    .line 913
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 914
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public addAppsBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 960
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 962
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$1100(Lcom/explorestack/protobuf/ByteString;)V

    .line 963
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureAppsIsMutable()V

    .line 964
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 965
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 613
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addSa(Ljava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 1056
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1058
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureSaIsMutable()V

    .line 1059
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 1060
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public addSaBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 1106
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1108
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$1200(Lcom/explorestack/protobuf/ByteString;)V

    .line 1109
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureSaIsMutable()V

    .line 1110
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 1111
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public build()Lcom/appodeal/ads/api/Extra;
    .locals 2

    .line 556
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->buildPartial()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Extra;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 558
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Extra$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->build()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->build()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Extra;
    .locals 2

    .line 565
    new-instance v0, Lcom/appodeal/ads/api/Extra;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Extra;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Extra$1;)V

    .line 567
    iget v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->priceFloor_:F

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Extra;->access$402(Lcom/appodeal/ads/api/Extra;F)F

    .line 568
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Extra;->access$502(Lcom/appodeal/ads/api/Extra;Ljava/lang/Object;)Ljava/lang/Object;

    .line 569
    iget v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 570
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 571
    iget v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    .line 573
    :cond_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Extra;->access$602(Lcom/appodeal/ads/api/Extra;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 574
    iget v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 575
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 576
    iget v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    .line 578
    :cond_1
    iget-object v1, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Extra;->access$702(Lcom/appodeal/ads/api/Extra;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 579
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->buildPartial()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->buildPartial()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 531
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    const/4 v0, 0x0

    .line 532
    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->priceFloor_:F

    .line 534
    const-string v0, ""

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 536
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 537
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    .line 538
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 539
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clear()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clear()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clear()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clear()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAdUnitStat()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 798
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->getDefaultInstance()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    invoke-virtual {v0}, Lcom/appodeal/ads/api/Extra;->getAdUnitStat()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 799
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public clearApps()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 943
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 944
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    .line 945
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 596
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 601
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearPriceFloor()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 722
    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->priceFloor_:F

    .line 723
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public clearSa()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 1089
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 1090
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    .line 1091
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public clone()Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 585
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Extra$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

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

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->clone()Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdUnitStat()Ljava/lang/String;
    .locals 2

    .line 737
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 738
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 739
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 741
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 742
    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    return-object v0

    .line 745
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdUnitStatBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 758
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 759
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 760
    check-cast v0, Ljava/lang/String;

    .line 761
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 763
    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    return-object v0

    .line 766
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getApps(I)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 863
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getAppsBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 876
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getAppsCount()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 851
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getAppsList()Ljava/util/List;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->getAppsList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;
    .locals 1

    .line 551
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->getDefaultInstance()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 546
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Extra_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getPriceFloor()F
    .locals 1

    .line 695
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->priceFloor_:F

    return v0
.end method

.method public getSa(I)Ljava/lang/String;
    .locals 1

    .line 1009
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getSaBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 1022
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getSaCount()I
    .locals 1

    .line 997
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getSaList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 986
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSaList()Ljava/util/List;
    .locals 1

    .line 497
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->getSaList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 509
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Extra_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Extra;

    const-class v2, Lcom/appodeal/ads/api/Extra$Builder;

    .line 510
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 2

    .line 626
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->getDefaultInstance()Lcom/appodeal/ads/api/Extra;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 627
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getPriceFloor()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_1

    .line 628
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getPriceFloor()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Extra$Builder;->setPriceFloor(F)Lcom/appodeal/ads/api/Extra$Builder;

    .line 630
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Extra;->getAdUnitStat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 631
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$500(Lcom/appodeal/ads/api/Extra;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 632
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    .line 634
    :cond_2
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$600(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 635
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 636
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$600(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    .line 637
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    goto :goto_0

    .line 639
    :cond_3
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureAppsIsMutable()V

    .line 640
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$600(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 642
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    .line 644
    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$700(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 645
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 646
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$700(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    .line 647
    iget v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->bitField0_:I

    goto :goto_1

    .line 649
    :cond_5
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureSaIsMutable()V

    .line 650
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$700(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 652
    :goto_1
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    .line 654
    :cond_6
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$800(Lcom/appodeal/ads/api/Extra;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    .line 655
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 671
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Extra;->access$900()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 677
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 673
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Extra;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 674
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

    .line 677
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    .line 679
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 617
    instance-of v0, p1, Lcom/appodeal/ads/api/Extra;

    if-eqz v0, :cond_0

    .line 618
    check-cast p1, Lcom/appodeal/ads/api/Extra;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/appodeal/ads/api/Extra;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1

    .line 620
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

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Extra$Builder;

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

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra$Builder;

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

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Extra$Builder;

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

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 1123
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdUnitStat(Ljava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 781
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 784
    iput-object p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 785
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdUnitStatBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 814
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 816
    invoke-static {p1}, Lcom/appodeal/ads/api/Extra;->access$1000(Lcom/explorestack/protobuf/ByteString;)V

    .line 818
    iput-object p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->adUnitStat_:Ljava/lang/Object;

    .line 819
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public setApps(ILjava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 891
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 893
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureAppsIsMutable()V

    .line 894
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->apps_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 895
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 591
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Extra$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setPriceFloor(F)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 708
    iput p1, p0, Lcom/appodeal/ads/api/Extra$Builder;->priceFloor_:F

    .line 709
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 607
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Extra$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Extra$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setSa(ILjava/lang/String;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 1

    .line 1037
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1039
    invoke-direct {p0}, Lcom/appodeal/ads/api/Extra$Builder;->ensureSaIsMutable()V

    .line 1040
    iget-object v0, p0, Lcom/appodeal/ads/api/Extra$Builder;->sa_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1041
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Extra$Builder;->onChanged()V

    return-object p0
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;
    .locals 0

    .line 1117
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Extra$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 497
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Extra$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Extra$Builder;

    move-result-object p1

    return-object p1
.end method
