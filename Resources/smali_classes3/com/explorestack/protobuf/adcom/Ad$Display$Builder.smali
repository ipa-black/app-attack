.class public final Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "Ad.java"

# interfaces
.implements Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/adcom/Ad$Display;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;",
        ">;",
        "Lcom/explorestack/protobuf/adcom/Ad$DisplayOrBuilder;"
    }
.end annotation


# instance fields
.field private adm_:Ljava/lang/Object;

.field private api_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

.field private bitField0_:I

.field private curl_:Ljava/lang/Object;

.field private eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private event_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation
.end field

.field private extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private extProto_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation
.end field

.field private ext_:Lcom/explorestack/protobuf/Struct;

.field private h_:I

.field private hratio_:I

.field private mime_:Lcom/explorestack/protobuf/LazyStringList;

.field private nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;",
            ">;"
        }
    .end annotation
.end field

.field private native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

.field private type_:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private w_:I

.field private wratio_:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 18590
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 18927
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 19074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 19262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 19633
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19734
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 20141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 20608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18591
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 18596
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 18927
    sget-object p1, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 19074
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 19262
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 19633
    const-string p1, ""

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19734
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 20141
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 20608
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18597
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 18572
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/adcom/Ad$1;)V
    .locals 0

    .line 18572
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;-><init>()V

    return-void
.end method

.method private ensureApiIsMutable()V
    .locals 2

    .line 19076
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 19077
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 19078
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureEventIsMutable()V
    .locals 2

    .line 20143
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-nez v0, :cond_0

    .line 20144
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 20145
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureExtProtoIsMutable()V
    .locals 2

    .line 20610
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    .line 20611
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 20612
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureMimeIsMutable()V
    .locals 2

    .line 18929
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    .line 18930
    new-instance v0, Lcom/explorestack/protobuf/LazyStringArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-direct {v0, v1}, Lcom/explorestack/protobuf/LazyStringArrayList;-><init>(Lcom/explorestack/protobuf/LazyStringList;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18931
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private ensureTypeIsMutable()V
    .locals 2

    .line 19264
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_0

    .line 19265
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 19266
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    :cond_0
    return-void
.end method

.method private getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;",
            ">;"
        }
    .end annotation

    .line 19974
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19975
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 19977
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v1

    .line 19978
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 19979
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 19980
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19982
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18578
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20440
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20441
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 20445
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 20446
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 20447
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 20449
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Struct;",
            "Lcom/explorestack/protobuf/Struct$Builder;",
            "Lcom/explorestack/protobuf/StructOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20596
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20597
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20599
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v1

    .line 20600
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 20601
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 20602
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20604
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/RepeatedFieldBuilderV3<",
            "Lcom/explorestack/protobuf/Any;",
            "Lcom/explorestack/protobuf/Any$Builder;",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20907
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20908
    new-instance v0, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    iget v2, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 20912
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v3

    .line 20913
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;-><init>(Ljava/util/List;ZLcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v0, 0x0

    .line 20914
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 20916
    :cond_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    return-object v0
.end method

.method private getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/SingleFieldBuilderV3<",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20129
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20130
    new-instance v0, Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 20132
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v1

    .line 20133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getParentForChildren()Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;

    move-result-object v2

    .line 20134
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->isClean()Z

    move-result v3

    invoke-direct {v0, v1, v2, v3}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;-><init>(Lcom/explorestack/protobuf/AbstractMessage;Lcom/explorestack/protobuf/AbstractMessage$BuilderParent;Z)V

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v0, 0x0

    .line 20135
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20137
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 1

    .line 18601
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13600()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 18602
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18603
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :cond_0
    return-void
.end method


# virtual methods
.method public addAllApi(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19165
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19166
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/ApiFramework;

    .line 19167
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19169
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllApiValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19253
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19254
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19255
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19257
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllEvent(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 20319
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20320
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20321
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 20323
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20325
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllExtProto(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/Any;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 20786
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20787
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20788
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 20790
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20792
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addAllMime(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19032
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 19033
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1, v0}, Lcom/explorestack/protobuf/AbstractMessageLite$Builder;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    .line 19035
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllType(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19353
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19354
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    .line 19355
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19357
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addAllTypeValue(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;"
        }
    .end annotation

    .line 19441
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19442
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19443
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19445
    :cond_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addApi(Lcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19147
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19149
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19150
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19151
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addApiValue(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19237
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19238
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19239
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20301
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20302
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20303
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20304
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20306
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20262
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20264
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20266
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20267
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20268
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20270
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20283
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20284
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20285
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20286
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20288
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEvent(Lcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20241
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20245
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20246
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20247
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20249
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addEventBuilder()Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 20411
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20412
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 20411
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object v0
.end method

.method public addEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 2

    .line 20423
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20424
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Event;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object v1

    .line 20423
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20768
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20769
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20770
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20771
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20773
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20729
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20731
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20733
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20734
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 20735
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20737
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20750
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20751
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20752
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20753
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20755
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProto(Lcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20708
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20710
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20712
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20713
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20714
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20716
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public addExtProtoBuilder()Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20878
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20879
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20878
    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Any$Builder;

    return-object v0
.end method

.method public addExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 2

    .line 20890
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    .line 20891
    invoke-static {}, Lcom/explorestack/protobuf/Any;->getDefaultInstance()Lcom/explorestack/protobuf/Any;

    move-result-object v1

    .line 20890
    invoke-virtual {v0, p1, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addBuilder(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public addMime(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19014
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19016
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 19017
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Ljava/lang/Object;)Z

    .line 19018
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addMimeBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19064
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19066
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15600(Lcom/explorestack/protobuf/ByteString;)V

    .line 19067
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 19068
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->add(Lcom/explorestack/protobuf/ByteString;)V

    .line 19069
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18772
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public addType(Lcom/explorestack/protobuf/adcom/DisplayCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19335
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19337
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19338
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19339
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public addTypeValue(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19425
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19426
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19427
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 2

    .line 18673
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    .line 18674
    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 18675
    :cond_0
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 2

    .line 18682
    new-instance v0, Lcom/explorestack/protobuf/adcom/Ad$Display;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lcom/explorestack/protobuf/adcom/Ad$1;)V

    .line 18683
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 18685
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v1}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18686
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x2

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18688
    :cond_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/LazyStringList;)Lcom/explorestack/protobuf/LazyStringList;

    .line 18689
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 18690
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18691
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18693
    :cond_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18694
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 18695
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18696
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x5

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18698
    :cond_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14002(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18699
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14102(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18700
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14202(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18701
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14302(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18702
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14402(Lcom/explorestack/protobuf/adcom/Ad$Display;I)I

    .line 18703
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14502(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18704
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14602(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18705
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_3

    .line 18706
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14702(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 18708
    :cond_3
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14702(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 18710
    :goto_0
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_4

    .line 18711
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_1

    .line 18713
    :cond_4
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14802(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 18715
    :goto_1
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_6

    .line 18716
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    .line 18717
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18718
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x9

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18720
    :cond_5
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    goto :goto_2

    .line 18722
    :cond_6
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14902(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18724
    :goto_2
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v1, :cond_7

    .line 18725
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15002(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 18727
    :cond_7
    invoke-virtual {v1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->build()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v1

    check-cast v1, Lcom/explorestack/protobuf/Struct;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15002(Lcom/explorestack/protobuf/adcom/Ad$Display;Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct;

    .line 18729
    :goto_3
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v1, :cond_9

    .line 18730
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_8

    .line 18731
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18732
    iget v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v1, v1, -0x11

    iput v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18734
    :cond_8
    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15102(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    goto :goto_4

    .line 18736
    :cond_9
    invoke-virtual {v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->build()Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15102(Lcom/explorestack/protobuf/adcom/Ad$Display;Ljava/util/List;)Ljava/util/List;

    .line 18738
    :goto_4
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 18608
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 18609
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18610
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18611
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18612
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18613
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18614
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    const/4 v0, 0x0

    .line 18615
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 18617
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 18619
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 18621
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    .line 18623
    const-string v0, ""

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18625
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 18627
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 18628
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 18630
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 18631
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18633
    :goto_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 18634
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_1

    .line 18636
    :cond_1
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 18637
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18639
    :goto_1
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_2

    .line 18640
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18641
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_2

    .line 18643
    :cond_2
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    .line 18645
    :goto_2
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_3

    .line 18646
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_3

    .line 18648
    :cond_3
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 18649
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    .line 18651
    :goto_3
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_4

    .line 18652
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18653
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_4

    .line 18655
    :cond_4
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_4
    return-object p0
.end method

.method public clearAdm()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19708
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19709
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearApi()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19181
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 19182
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 19183
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 19927
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 19928
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19929
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19931
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19932
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearCurl()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19805
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19806
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearEvent()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20337
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20338
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 20339
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 20340
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20342
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public clearExt()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 20549
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20550
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20551
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20553
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20554
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public clearExtProto()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20804
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20805
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 20806
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 20807
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20809
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->clear()V

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18755
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public clearH()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19536
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 19537
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHratio()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19628
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    .line 19629
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMime()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19047
    sget-object v0, Lcom/explorestack/protobuf/LazyStringArrayList;->EMPTY:Lcom/explorestack/protobuf/LazyStringList;

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 19048
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 19049
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2

    .line 20082
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 20083
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20084
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20086
    :cond_0
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20087
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18760
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public clearType()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19369
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 19370
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 19371
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearW()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19490
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 19491
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWratio()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 19582
    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 19583
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18744
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->clone()Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getAdm()Ljava/lang/String;
    .locals 2

    .line 19644
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19645
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19646
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19648
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19649
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 19652
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getAdmBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19666
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19667
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19668
    check-cast v0, Ljava/lang/String;

    .line 19669
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19671
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    return-object v0

    .line 19674
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getApi(I)Lcom/explorestack/protobuf/adcom/ApiFramework;
    .locals 2

    .line 19114
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/ApiFramework;

    return-object p1
.end method

.method public getApiCount()I
    .locals 1

    .line 19102
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getApiList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/ApiFramework;",
            ">;"
        }
    .end annotation

    .line 19090
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 19091
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15700()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getApiValue(I)I
    .locals 1

    .line 19208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getApiValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 19196
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;
    .locals 1

    .line 19853
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19854
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    :cond_0
    return-object v0

    .line 19856
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    return-object v0
.end method

.method public getBannerBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;
    .locals 1

    .line 19946
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 19947
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getBannerFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    return-object v0
.end method

.method public getBannerOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;
    .locals 1

    .line 19957
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 19958
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$BannerOrBuilder;

    return-object v0

    .line 19960
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-nez v0, :cond_1

    .line 19961
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getCurl()Ljava/lang/String;
    .locals 2

    .line 19744
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19745
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 19746
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 19748
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 19749
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 19752
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getCurlBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 19765
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19766
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 19767
    check-cast v0, Ljava/lang/String;

    .line 19768
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 19770
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    return-object v0

    .line 19773
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lcom/explorestack/protobuf/adcom/Ad$Display;
    .locals 1

    .line 18668
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 18663
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Event;
    .locals 1

    .line 20188
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20189
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1

    .line 20191
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event;

    return-object p1
.end method

.method public getEventBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;
    .locals 1

    .line 20372
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;

    return-object p1
.end method

.method public getEventBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;",
            ">;"
        }
    .end annotation

    .line 20435
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventCount()I
    .locals 1

    .line 20174
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20175
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 20177
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/Ad$Event;",
            ">;"
        }
    .end annotation

    .line 20160
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20161
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20163
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getEventOrBuilder(I)Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;
    .locals 1

    .line 20383
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1

    .line 20385
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;

    return-object p1
.end method

.method public getEventOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/adcom/Ad$EventOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20397
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20398
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20400
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExt()Lcom/explorestack/protobuf/Struct;
    .locals 1

    .line 20475
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20476
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_0
    return-object v0

    .line 20478
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct;

    return-object v0
.end method

.method public getExtBuilder()Lcom/explorestack/protobuf/Struct$Builder;
    .locals 1

    .line 20568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 20569
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Struct$Builder;

    return-object v0
.end method

.method public getExtOrBuilder()Lcom/explorestack/protobuf/StructOrBuilder;
    .locals 1

    .line 20579
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20580
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/StructOrBuilder;

    return-object v0

    .line 20582
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-nez v0, :cond_1

    .line 20583
    invoke-static {}, Lcom/explorestack/protobuf/Struct;->getDefaultInstance()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getExtProto(I)Lcom/explorestack/protobuf/Any;
    .locals 1

    .line 20655
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20656
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1

    .line 20658
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessage(I)Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any;

    return-object p1
.end method

.method public getExtProtoBuilder(I)Lcom/explorestack/protobuf/Any$Builder;
    .locals 1

    .line 20839
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilder(I)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/Any$Builder;

    return-object p1
.end method

.method public getExtProtoBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any$Builder;",
            ">;"
        }
    .end annotation

    .line 20902
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoCount()I
    .locals 1

    .line 20641
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20642
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 20644
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getCount()I

    move-result v0

    return v0
.end method

.method public getExtProtoList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Any;",
            ">;"
        }
    .end annotation

    .line 20627
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20628
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20630
    :cond_0
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getExtProtoOrBuilder(I)Lcom/explorestack/protobuf/AnyOrBuilder;
    .locals 1

    .line 20850
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20851
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1

    .line 20852
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilder(I)Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/AnyOrBuilder;

    return-object p1
.end method

.method public getExtProtoOrBuilderList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/explorestack/protobuf/AnyOrBuilder;",
            ">;"
        }
    .end annotation

    .line 20864
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->getMessageOrBuilderList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 20867
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getH()I
    .locals 1

    .line 19507
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    return v0
.end method

.method public getHratio()I
    .locals 1

    .line 19599
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    return v0
.end method

.method public getMime(I)Ljava/lang/String;
    .locals 1

    .line 18967
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public getMimeBytes(I)Lcom/explorestack/protobuf/ByteString;
    .locals 1

    .line 18980
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/LazyStringList;->getByteString(I)Lcom/explorestack/protobuf/ByteString;

    move-result-object p1

    return-object p1
.end method

.method public getMimeCount()I
    .locals 1

    .line 18955
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->size()I

    move-result v0

    return v0
.end method

.method public getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;
    .locals 1

    .line 18944
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->getUnmodifiableView()Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getMimeList()Ljava/util/List;
    .locals 1

    .line 18572
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getMimeList()Lcom/explorestack/protobuf/ProtocolStringList;

    move-result-object v0

    return-object v0
.end method

.method public getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;
    .locals 1

    .line 20008
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20009
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    :cond_0
    return-object v0

    .line 20011
    :cond_1
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessage()Lcom/explorestack/protobuf/AbstractMessage;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    return-object v0
.end method

.method public getNativeBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;
    .locals 1

    .line 20101
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 20102
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getNativeFieldBuilder()Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getBuilder()Lcom/explorestack/protobuf/AbstractMessage$Builder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    return-object v0
.end method

.method public getNativeOrBuilder()Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;
    .locals 1

    .line 20112
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-eqz v0, :cond_0

    .line 20113
    invoke-virtual {v0}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->getMessageOrBuilder()Lcom/explorestack/protobuf/MessageOrBuilder;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/adcom/Ad$Display$NativeOrBuilder;

    return-object v0

    .line 20115
    :cond_0
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-nez v0, :cond_1

    .line 20116
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getType(I)Lcom/explorestack/protobuf/adcom/DisplayCreativeType;
    .locals 2

    .line 19302
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v0

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;->convert(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;

    return-object p1
.end method

.method public getTypeCount()I
    .locals 1

    .line 19290
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getTypeList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/adcom/DisplayCreativeType;",
            ">;"
        }
    .end annotation

    .line 19278
    new-instance v0, Lcom/explorestack/protobuf/Internal$ListAdapter;

    iget-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 19279
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15800()Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/explorestack/protobuf/Internal$ListAdapter;-><init>(Ljava/util/List;Lcom/explorestack/protobuf/Internal$ListAdapter$Converter;)V

    return-object v0
.end method

.method public getTypeValue(I)I
    .locals 1

    .line 19396
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getTypeValueList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 19384
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getW()I
    .locals 1

    .line 19461
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    return v0
.end method

.method public getWratio()I
    .locals 1

    .line 19553
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    return v0
.end method

.method public hasBanner()Z
    .locals 1

    .line 19842
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

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

.method public hasExt()Z
    .locals 1

    .line 20464
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

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

.method public hasNative()Z
    .locals 1

    .line 19997
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

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

    .line 18584
    sget-object v0, Lcom/explorestack/protobuf/adcom/AdcomProto;->internal_static_bidmachine_protobuf_adcom_Ad_Display_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    const-class v2, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18585
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public mergeBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19905
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 19906
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    if-eqz v0, :cond_0

    .line 19908
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    goto :goto_0

    .line 19910
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19912
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 19914
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20527
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20528
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    if-eqz v0, :cond_0

    .line 20530
    invoke-static {v0}, Lcom/explorestack/protobuf/Struct;->newBuilder(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/Struct$Builder;->mergeFrom(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/Struct$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->buildPartial()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    goto :goto_0

    .line 20532
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20534
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 20536
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

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

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 18914
    :try_start_0
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15500()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 18920
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 18916
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lcom/explorestack/protobuf/adcom/Ad$Display;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18917
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

    .line 18920
    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18922
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18776
    instance-of v0, p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    if-eqz v0, :cond_0

    .line 18777
    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display;

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1

    .line 18779
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 3

    .line 18785
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getDefaultInstance()Lcom/explorestack/protobuf/adcom/Ad$Display;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 18786
    :cond_0
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 18787
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0}, Lcom/explorestack/protobuf/LazyStringList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 18788
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    .line 18789
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_0

    .line 18791
    :cond_1
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18792
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13800(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/LazyStringList;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/explorestack/protobuf/LazyStringList;->addAll(Ljava/util/Collection;)Z

    .line 18794
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18796
    :cond_2
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 18797
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 18798
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    .line 18799
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_1

    .line 18801
    :cond_3
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 18802
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$13900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18804
    :goto_1
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18806
    :cond_4
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 18807
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 18808
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    .line 18809
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_2

    .line 18811
    :cond_5
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 18812
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14000(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18814
    :goto_2
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18816
    :cond_6
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v0

    if-eqz v0, :cond_7

    .line 18817
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getW()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setW(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18819
    :cond_7
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v0

    if-eqz v0, :cond_8

    .line 18820
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getH()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setH(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18822
    :cond_8
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v0

    if-eqz v0, :cond_9

    .line 18823
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getWratio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setWratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18825
    :cond_9
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v0

    if-eqz v0, :cond_a

    .line 18826
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getHratio()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setHratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18828
    :cond_a
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getAdm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 18829
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14500(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 18830
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18832
    :cond_b
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getCurl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_c

    .line 18833
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14600(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 18834
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    .line 18836
    :cond_c
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasBanner()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 18837
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getBanner()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18839
    :cond_d
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasNative()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 18840
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getNative()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18842
    :cond_e
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 18843
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 18844
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 18845
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18846
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_3

    .line 18848
    :cond_f
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 18849
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18851
    :goto_3
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_5

    .line 18854
    :cond_10
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_13

    .line 18855
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 18856
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 18857
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18858
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    .line 18859
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18861
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15200()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 18862
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getEventFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v0

    goto :goto_4

    :cond_11
    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_5

    .line 18864
    :cond_12
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$14900(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18868
    :cond_13
    :goto_5
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->hasExt()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 18869
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->getExt()Lcom/explorestack/protobuf/Struct;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18871
    :cond_14
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_16

    .line 18872
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 18873
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 18874
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18875
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    goto :goto_6

    .line 18877
    :cond_15
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 18878
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18880
    :goto_6
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_7

    .line 18883
    :cond_16
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_19

    .line 18884
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 18885
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->dispose()V

    .line 18886
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18887
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    .line 18888
    iget v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bitField0_:I

    .line 18890
    invoke-static {}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15300()Z

    move-result v0

    if-eqz v0, :cond_17

    .line 18891
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->getExtProtoFieldBuilder()Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    move-result-object v1

    :cond_17
    iput-object v1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    goto :goto_7

    .line 18893
    :cond_18
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15100(Lcom/explorestack/protobuf/adcom/Ad$Display;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->addAllMessages(Ljava/lang/Iterable;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    .line 18897
    :cond_19
    :goto_7
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15400(Lcom/explorestack/protobuf/adcom/Ad$Display;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    .line 18898
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public mergeNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20060
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_1

    .line 20061
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    if-eqz v0, :cond_0

    .line 20063
    invoke-static {v0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native;->newBuilder(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->mergeFrom(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->buildPartial()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    goto :goto_0

    .line 20065
    :cond_0
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20067
    :goto_0
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_1

    .line 20069
    :cond_1
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->mergeFrom(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_1
    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 20927
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public removeEvent(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20354
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20355
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20356
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20357
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20359
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public removeExtProto(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20821
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20822
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20823
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 20824
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20826
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->remove(I)V

    :goto_0
    return-object p0
.end method

.method public setAdm(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19690
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19693
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setAdmBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19725
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19727
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$15900(Lcom/explorestack/protobuf/ByteString;)V

    .line 19729
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->adm_:Ljava/lang/Object;

    .line 19730
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setApi(ILcom/explorestack/protobuf/adcom/ApiFramework;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19129
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19131
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19132
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/ApiFramework;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19133
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setApiValue(II)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19222
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureApiIsMutable()V

    .line 19223
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->api_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19224
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19888
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19889
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19890
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19892
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Banner$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setBanner(Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19867
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->bannerBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 19869
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19871
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->banner_:Lcom/explorestack/protobuf/adcom/Ad$Display$Banner;

    .line 19872
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 19874
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setCurl(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19788
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19791
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19792
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setCurlBytes(Lcom/explorestack/protobuf/ByteString;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19821
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19823
    invoke-static {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display;->access$16000(Lcom/explorestack/protobuf/ByteString;)V

    .line 19825
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->curl_:Ljava/lang/Object;

    .line 19826
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20224
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20225
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20226
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20227
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20229
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/Ad$Event$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Event;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setEvent(ILcom/explorestack/protobuf/adcom/Ad$Event;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20203
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->eventBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20205
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20207
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureEventIsMutable()V

    .line 20208
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->event_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20209
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20211
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20510
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20511
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20512
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20514
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/Struct$Builder;->build()Lcom/explorestack/protobuf/Struct;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExt(Lcom/explorestack/protobuf/Struct;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20489
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20491
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20493
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ext_:Lcom/explorestack/protobuf/Struct;

    .line 20494
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20496
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20691
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20692
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20693
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20694
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20696
    :cond_0
    invoke-virtual {p2}, Lcom/explorestack/protobuf/Any$Builder;->build()Lcom/explorestack/protobuf/Any;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setExtProto(ILcom/explorestack/protobuf/Any;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20670
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProtoBuilder_:Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20672
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20674
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureExtProtoIsMutable()V

    .line 20675
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->extProto_:Ljava/util/List;

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 20676
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20678
    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;->setMessage(ILcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/RepeatedFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18750
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public setH(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19521
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->h_:I

    .line 19522
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setHratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19613
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->hratio_:I

    .line 19614
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setMime(ILjava/lang/String;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 18995
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18997
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureMimeIsMutable()V

    .line 18998
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->mime_:Lcom/explorestack/protobuf/LazyStringList;

    invoke-interface {v0, p1, p2}, Lcom/explorestack/protobuf/LazyStringList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 18999
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20043
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20044
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20045
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20047
    :cond_0
    invoke-virtual {p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Native$Builder;->build()Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public setNative(Lcom/explorestack/protobuf/adcom/Ad$Display$Native;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 20022
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->nativeBuilder_:Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    if-nez v0, :cond_0

    .line 20024
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20026
    iput-object p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->native_:Lcom/explorestack/protobuf/adcom/Ad$Display$Native;

    .line 20027
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    goto :goto_0

    .line 20029
    :cond_0
    invoke-virtual {v0, p1}, Lcom/explorestack/protobuf/SingleFieldBuilderV3;->setMessage(Lcom/explorestack/protobuf/AbstractMessage;)Lcom/explorestack/protobuf/SingleFieldBuilderV3;

    :goto_0
    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1, p2, p3}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 18766
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public setType(ILcom/explorestack/protobuf/adcom/DisplayCreativeType;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19317
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19319
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19320
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-virtual {p2}, Lcom/explorestack/protobuf/adcom/DisplayCreativeType;->getNumber()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19321
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setTypeValue(II)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 1

    .line 19410
    invoke-direct {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->ensureTypeIsMutable()V

    .line 19411
    iget-object v0, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->type_:Ljava/util/List;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 19412
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 18572
    invoke-virtual {p0, p1}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 20921
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;

    return-object p1
.end method

.method public setW(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19475
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->w_:I

    .line 19476
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method

.method public setWratio(I)Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;
    .locals 0

    .line 19567
    iput p1, p0, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->wratio_:I

    .line 19568
    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/Ad$Display$Builder;->onChanged()V

    return-object p0
.end method
