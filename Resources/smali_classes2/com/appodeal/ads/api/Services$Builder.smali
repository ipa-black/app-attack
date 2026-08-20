.class public final Lcom/appodeal/ads/api/Services$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Services.java"

# interfaces
.implements Lcom/appodeal/ads/api/ServicesOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appodeal/ads/api/Services;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/appodeal/ads/api/Services$Builder;",
        ">;",
        "Lcom/appodeal/ads/api/ServicesOrBuilder;"
    }
.end annotation


# instance fields
.field private adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Adjust;",
            "Lcom/appodeal/ads/api/Services$Adjust$Builder;",
            "Lcom/appodeal/ads/api/Services$AdjustOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private adjust_:Lcom/appodeal/ads/api/Services$Adjust;

.field private appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Appsflyer;",
            "Lcom/appodeal/ads/api/Services$Appsflyer$Builder;",
            "Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

.field private facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Facebook;",
            "Lcom/appodeal/ads/api/Services$Facebook$Builder;",
            "Lcom/appodeal/ads/api/Services$FacebookOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private facebook_:Lcom/appodeal/ads/api/Services$Facebook;

.field private firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Firebase;",
            "Lcom/appodeal/ads/api/Services$Firebase$Builder;",
            "Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private firebase_:Lcom/appodeal/ads/api/Services$Firebase;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 3786
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 3787
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 3768
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;-><init>()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 3792
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 3793
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/appodeal/ads/api/Services$1;)V
    .locals 0

    .line 3768
    invoke-direct {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method private getAdjustFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Adjust;",
            "Lcom/appodeal/ads/api/Services$Adjust$Builder;",
            "Lcom/appodeal/ads/api/Services$AdjustOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4261
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4262
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4264
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v1

    .line 4265
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4266
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4267
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4269
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getAppsflyerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Appsflyer;",
            "Lcom/appodeal/ads/api/Services$Appsflyer$Builder;",
            "Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4106
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4107
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4109
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v1

    .line 4110
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4111
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4112
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4114
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3774
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getFacebookFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Facebook;",
            "Lcom/appodeal/ads/api/Services$Facebook$Builder;",
            "Lcom/appodeal/ads/api/Services$FacebookOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4416
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4417
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4419
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v1

    .line 4420
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4421
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4422
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4424
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getFirebaseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/appodeal/ads/api/Services$Firebase;",
            "Lcom/appodeal/ads/api/Services$Firebase$Builder;",
            "Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;",
            ">;"
        }
    .end annotation

    .line 4571
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4572
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 4574
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v1

    .line 4575
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 4576
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 4577
    iput-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4579
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 3797
    invoke-static {}, Lcom/appodeal/ads/api/Services;->access$4600()Z

    return-void
.end method


# virtual methods
.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 3907
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public build()Lcom/appodeal/ads/api/Services;
    .locals 2

    .line 3843
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->buildPartial()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    .line 3844
    invoke-virtual {v0}, Lcom/appodeal/ads/api/Services;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 3845
    :cond_0
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->build()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->build()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/appodeal/ads/api/Services;
    .locals 2

    .line 3852
    new-instance v0, Lcom/appodeal/ads/api/Services;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/appodeal/ads/api/Services;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/appodeal/ads/api/Services$1;)V

    .line 3853
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_0

    .line 3854
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$4802(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer;

    goto :goto_0

    .line 3856
    :cond_0
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/Services$Appsflyer;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$4802(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 3858
    :goto_0
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_1

    .line 3859
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$4902(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust;

    goto :goto_1

    .line 3861
    :cond_1
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/Services$Adjust;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$4902(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust;

    .line 3863
    :goto_1
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_2

    .line 3864
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$5002(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook;

    goto :goto_2

    .line 3866
    :cond_2
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/Services$Facebook;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$5002(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook;

    .line 3868
    :goto_2
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 3869
    iget-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$5102(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase;

    goto :goto_3

    .line 3871
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/appodeal/ads/api/Services$Firebase;

    invoke-static {v0, v1}, Lcom/appodeal/ads/api/Services;->access$5102(Lcom/appodeal/ads/api/Services;Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase;

    .line 3873
    :goto_3
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->buildPartial()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->buildPartial()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 3802
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 3803
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3804
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    goto :goto_0

    .line 3806
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 3807
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3809
    :goto_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3810
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    goto :goto_1

    .line 3812
    :cond_1
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 3813
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3815
    :goto_1
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_2

    .line 3816
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    goto :goto_2

    .line 3818
    :cond_2
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 3819
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 3821
    :goto_2
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 3822
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    goto :goto_3

    .line 3824
    :cond_3
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 3825
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_3
    return-object p0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clear()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clear()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clear()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clear()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clearAdjust()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 4214
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4215
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4216
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4218
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4219
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearAppsflyer()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 4059
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4060
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4061
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4063
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4064
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearFacebook()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 4369
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4370
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4371
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4373
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4374
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 3890
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearFirebase()Lcom/appodeal/ads/api/Services$Builder;
    .locals 2

    .line 4524
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4525
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4526
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4528
    :cond_0
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4529
    iput-object v1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 3895
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clone()Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3879
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

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

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->clone()Lcom/appodeal/ads/api/Services$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdjust()Lcom/appodeal/ads/api/Services$Adjust;
    .locals 1

    .line 4140
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4141
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4143
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Adjust;

    return-object v0
.end method

.method public getAdjustBuilder()Lcom/appodeal/ads/api/Services$Adjust$Builder;
    .locals 1

    .line 4233
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    .line 4234
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->getAdjustFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Adjust$Builder;

    return-object v0
.end method

.method public getAdjustOrBuilder()Lcom/appodeal/ads/api/Services$AdjustOrBuilder;
    .locals 1

    .line 4244
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4245
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$AdjustOrBuilder;

    return-object v0

    .line 4247
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-nez v0, :cond_1

    .line 4248
    invoke-static {}, Lcom/appodeal/ads/api/Services$Adjust;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;
    .locals 1

    .line 3985
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 3986
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    :cond_0
    return-object v0

    .line 3988
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Appsflyer;

    return-object v0
.end method

.method public getAppsflyerBuilder()Lcom/appodeal/ads/api/Services$Appsflyer$Builder;
    .locals 1

    .line 4078
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    .line 4079
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->getAppsflyerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    return-object v0
.end method

.method public getAppsflyerOrBuilder()Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;
    .locals 1

    .line 4089
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4090
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$AppsflyerOrBuilder;

    return-object v0

    .line 4092
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-nez v0, :cond_1

    .line 4093
    invoke-static {}, Lcom/appodeal/ads/api/Services$Appsflyer;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;
    .locals 1

    .line 3838
    invoke-static {}, Lcom/appodeal/ads/api/Services;->getDefaultInstance()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 3768
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->getDefaultInstanceForType()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 3833
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFacebook()Lcom/appodeal/ads/api/Services$Facebook;
    .locals 1

    .line 4295
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4296
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4298
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Facebook;

    return-object v0
.end method

.method public getFacebookBuilder()Lcom/appodeal/ads/api/Services$Facebook$Builder;
    .locals 1

    .line 4388
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    .line 4389
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->getFacebookFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Facebook$Builder;

    return-object v0
.end method

.method public getFacebookOrBuilder()Lcom/appodeal/ads/api/Services$FacebookOrBuilder;
    .locals 1

    .line 4399
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4400
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$FacebookOrBuilder;

    return-object v0

    .line 4402
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-nez v0, :cond_1

    .line 4403
    invoke-static {}, Lcom/appodeal/ads/api/Services$Facebook;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getFirebase()Lcom/appodeal/ads/api/Services$Firebase;
    .locals 1

    .line 4450
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4451
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    :cond_0
    return-object v0

    .line 4453
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Firebase;

    return-object v0
.end method

.method public getFirebaseBuilder()Lcom/appodeal/ads/api/Services$Firebase$Builder;
    .locals 1

    .line 4543
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    .line 4544
    invoke-direct {p0}, Lcom/appodeal/ads/api/Services$Builder;->getFirebaseFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$Firebase$Builder;

    return-object v0
.end method

.method public getFirebaseOrBuilder()Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;
    .locals 1

    .line 4554
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 4555
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/appodeal/ads/api/Services$FirebaseOrBuilder;

    return-object v0

    .line 4557
    :cond_0
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-nez v0, :cond_1

    .line 4558
    invoke-static {}, Lcom/appodeal/ads/api/Services$Firebase;->getDefaultInstance()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public hasAdjust()Z
    .locals 1

    .line 4129
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasAppsflyer()Z
    .locals 1

    .line 3974
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasFacebook()Z
    .locals 1

    .line 4284
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hasFirebase()Z
    .locals 1

    .line 4439
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 3780
    sget-object v0, Lcom/appodeal/ads/api/Api;->internal_static_com_appodeal_ads_Services_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/appodeal/ads/api/Services;

    const-class v2, Lcom/appodeal/ads/api/Services$Builder;

    .line 3781
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeAdjust(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4192
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4193
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    if-eqz v0, :cond_0

    .line 4195
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Adjust;->newBuilder(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Adjust$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    goto :goto_0

    .line 4197
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4199
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_1

    .line 4201
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeAppsflyer(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4037
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4038
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    if-eqz v0, :cond_0

    .line 4040
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Appsflyer;->newBuilder(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Appsflyer$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    goto :goto_0

    .line 4042
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4044
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_1

    .line 4046
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeFacebook(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4347
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4348
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    if-eqz v0, :cond_0

    .line 4350
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Facebook;->newBuilder(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Facebook$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    goto :goto_0

    .line 4352
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4354
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_1

    .line 4356
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeFirebase(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4502
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 4503
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    if-eqz v0, :cond_0

    .line 4505
    invoke-static {v0}, Lcom/appodeal/ads/api/Services$Firebase;->newBuilder(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Firebase$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->buildPartial()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    goto :goto_0

    .line 4507
    :cond_0
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4509
    :goto_0
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_1

    .line 4511
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3920
    invoke-static {}, Lcom/appodeal/ads/api/Services;->getDefaultInstance()Lcom/appodeal/ads/api/Services;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 3921
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasAppsflyer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3922
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getAppsflyer()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Builder;->mergeAppsflyer(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3924
    :cond_1
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasAdjust()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3925
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getAdjust()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Builder;->mergeAdjust(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3927
    :cond_2
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasFacebook()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3928
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getFacebook()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Builder;->mergeFacebook(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3930
    :cond_3
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->hasFirebase()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3931
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services;->getFirebase()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Builder;->mergeFirebase(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3933
    :cond_4
    invoke-static {p1}, Lcom/appodeal/ads/api/Services;->access$5200(Lcom/appodeal/ads/api/Services;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3934
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3950
    :try_start_0
    invoke-static {}, Lcom/appodeal/ads/api/Services;->access$5300()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 3956
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3952
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/appodeal/ads/api/Services;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3953
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

    .line 3956
    invoke-virtual {p0, v0}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    .line 3958
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3911
    instance-of v0, p1, Lcom/appodeal/ads/api/Services;

    if-eqz v0, :cond_0

    .line 3912
    check-cast p1, Lcom/appodeal/ads/api/Services;

    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/appodeal/ads/api/Services;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1

    .line 3914
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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/appodeal/ads/api/Services$Builder;

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

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 4590
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setAdjust(Lcom/appodeal/ads/api/Services$Adjust$Builder;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4175
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4176
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->build()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4177
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4179
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Adjust$Builder;->build()Lcom/appodeal/ads/api/Services$Adjust;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAdjust(Lcom/appodeal/ads/api/Services$Adjust;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4154
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->adjustBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4156
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4158
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->adjust_:Lcom/appodeal/ads/api/Services$Adjust;

    .line 4159
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4161
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAppsflyer(Lcom/appodeal/ads/api/Services$Appsflyer$Builder;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4020
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4021
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->build()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4022
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4024
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Appsflyer$Builder;->build()Lcom/appodeal/ads/api/Services$Appsflyer;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setAppsflyer(Lcom/appodeal/ads/api/Services$Appsflyer;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 3999
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4003
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->appsflyer_:Lcom/appodeal/ads/api/Services$Appsflyer;

    .line 4004
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4006
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFacebook(Lcom/appodeal/ads/api/Services$Facebook$Builder;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4330
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4331
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->build()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4332
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4334
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Facebook$Builder;->build()Lcom/appodeal/ads/api/Services$Facebook;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFacebook(Lcom/appodeal/ads/api/Services$Facebook;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4309
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->facebookBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4311
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4313
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->facebook_:Lcom/appodeal/ads/api/Services$Facebook;

    .line 4314
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4316
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 3885
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2}, Lcom/appodeal/ads/api/Services$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setFirebase(Lcom/appodeal/ads/api/Services$Firebase$Builder;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4485
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4486
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->build()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object p1

    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4487
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4489
    :cond_0
    invoke-virtual {p1}, Lcom/appodeal/ads/api/Services$Firebase$Builder;->build()Lcom/appodeal/ads/api/Services$Firebase;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setFirebase(Lcom/appodeal/ads/api/Services$Firebase;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 1

    .line 4464
    iget-object v0, p0, Lcom/appodeal/ads/api/Services$Builder;->firebaseBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 4466
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4468
    iput-object p1, p0, Lcom/appodeal/ads/api/Services$Builder;->firebase_:Lcom/appodeal/ads/api/Services$Firebase;

    .line 4469
    invoke-virtual {p0}, Lcom/appodeal/ads/api/Services$Builder;->onChanged()V

    goto :goto_0

    .line 4471
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 3901
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1, p2, p3}, Lcom/appodeal/ads/api/Services$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;
    .locals 0

    .line 4584
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/appodeal/ads/api/Services$Builder;

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 3768
    invoke-virtual {p0, p1}, Lcom/appodeal/ads/api/Services$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/appodeal/ads/api/Services$Builder;

    move-result-object p1

    return-object p1
.end method
