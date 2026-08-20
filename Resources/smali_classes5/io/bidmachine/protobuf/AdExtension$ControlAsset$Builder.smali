.class public final Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
.super Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
.source "AdExtension.java"

# interfaces
.implements Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/bidmachine/protobuf/AdExtension$ControlAsset;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/explorestack/protobuf/GeneratedMessageV3$Builder<",
        "Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;",
        ">;",
        "Lio/bidmachine/protobuf/AdExtension$ControlAssetOrBuilder;"
    }
.end annotation


# instance fields
.field private content_:Ljava/lang/Object;

.field private fill_:Ljava/lang/Object;

.field private fontStyle_:I

.field private height_:I

.field private hideafter_:I

.field private margin_:Ljava/lang/Object;

.field private opacity_:F

.field private outlined_:Z

.field private padding_:Ljava/lang/Object;

.field private shadow_:Ljava/lang/Object;

.field private strokeWidth_:F

.field private stroke_:Ljava/lang/Object;

.field private style_:Ljava/lang/Object;

.field private visible_:Z

.field private width_:I

.field private x_:Ljava/lang/Object;

.field private y_:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1604
    invoke-direct {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>()V

    .line 1835
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1931
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2156
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2338
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2434
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2530
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2669
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2851
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2947
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1605
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method private constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V
    .locals 0

    .line 1610
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    .line 1835
    const-string p1, ""

    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1931
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2156
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2338
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2434
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2530
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2669
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2851
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2947
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1611
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->maybeForceBuilderInitialization()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 1586
    invoke-direct {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$BuilderParent;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/bidmachine/protobuf/AdExtension$1;)V
    .locals 0

    .line 1586
    invoke-direct {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;-><init>()V

    return-void
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1592
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method private maybeForceBuilderInitialization()V
    .locals 0

    .line 1615
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$200()Z

    return-void
.end method


# virtual methods
.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1732
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->addRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic build()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public build()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 2

    .line 1671
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    .line 1672
    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->isInitialized()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 1673
    :cond_0
    invoke-static {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->newUninitializedMessageException(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/UninitializedMessageException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public buildPartial()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 2

    .line 1680
    new-instance v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;-><init>(Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;Lio/bidmachine/protobuf/AdExtension$1;)V

    .line 1681
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1682
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1683
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1684
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1685
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1686
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1687
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F

    .line 1688
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1102(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z

    .line 1689
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1202(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1690
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1302(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1691
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1402(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1692
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1502(Lio/bidmachine/protobuf/AdExtension$ControlAsset;F)F

    .line 1693
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1602(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1694
    iget-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1702(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Z)Z

    .line 1695
    iget v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1802(Lio/bidmachine/protobuf/AdExtension$ControlAsset;I)I

    .line 1696
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1902(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1697
    iget-object v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    invoke-static {v0, v1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2002(Lio/bidmachine/protobuf/AdExtension$ControlAsset;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1698
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onBuilt()V

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 3

    .line 1620
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clear()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    .line 1621
    const-string v0, ""

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1623
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 1625
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 1627
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 1629
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 1631
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1633
    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 1635
    iput-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 1637
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 1639
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 1641
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 1643
    iput v2, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 1645
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 1647
    iput-boolean v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 1649
    iput v1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 1651
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 1653
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object p0
.end method

.method public clearContent()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1906
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1907
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1715
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public clearFill()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2002
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2003
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearFontStyle()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2065
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 2066
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHeight()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2108
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 2109
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearHideafter()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2151
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 2152
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearMargin()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2227
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2228
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1720
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clearOneof(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public clearOpacity()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2290
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 2291
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearOutlined()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2333
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 2334
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearPadding()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2409
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2410
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearShadow()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2505
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2506
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStroke()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2601
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2602
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStrokeWidth()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2664
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 2665
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearStyle()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2740
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2741
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearVisible()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2803
    iput-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 2804
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearWidth()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    const/4 v0, 0x0

    .line 2846
    iput v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 2847
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearX()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 2922
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2923
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public clearY()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 3018
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    invoke-virtual {v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3019
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/Message$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/explorestack/protobuf/MessageLite$Builder;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1704
    invoke-super {p0}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->clone()Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object v0

    check-cast v0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->clone()Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object v0

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 2

    .line 1845
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1846
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1847
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1849
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1850
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1853
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getContentBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1866
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1867
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1868
    check-cast v0, Ljava/lang/String;

    .line 1869
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1871
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    return-object v0

    .line 1874
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDefaultInstanceForType()Lcom/explorestack/protobuf/MessageLite;
    .locals 1

    .line 1586
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultInstanceForType()Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    .locals 1

    .line 1666
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    return-object v0
.end method

.method public getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 1661
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_descriptor:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getFill()Ljava/lang/String;
    .locals 2

    .line 1941
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 1942
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1943
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 1945
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 1946
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 1949
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getFillBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 1962
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 1963
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1964
    check-cast v0, Ljava/lang/String;

    .line 1965
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 1967
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    return-object v0

    .line 1970
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getFontStyle()I
    .locals 1

    .line 2038
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    .line 2081
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    return v0
.end method

.method public getHideafter()I
    .locals 1

    .line 2124
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    return v0
.end method

.method public getMargin()Ljava/lang/String;
    .locals 2

    .line 2166
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2167
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2168
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2170
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2171
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    return-object v0

    .line 2174
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getMarginBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2187
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2188
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2189
    check-cast v0, Ljava/lang/String;

    .line 2190
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2192
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    return-object v0

    .line 2195
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getOpacity()F
    .locals 1

    .line 2263
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    return v0
.end method

.method public getOutlined()Z
    .locals 1

    .line 2306
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    return v0
.end method

.method public getPadding()Ljava/lang/String;
    .locals 2

    .line 2348
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2349
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2350
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2352
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2353
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    return-object v0

    .line 2356
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getPaddingBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2369
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2370
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2371
    check-cast v0, Ljava/lang/String;

    .line 2372
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2374
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    return-object v0

    .line 2377
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getShadow()Ljava/lang/String;
    .locals 2

    .line 2444
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2445
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2446
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2448
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2449
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2452
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getShadowBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2465
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2466
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2467
    check-cast v0, Ljava/lang/String;

    .line 2468
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2470
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    return-object v0

    .line 2473
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStroke()Ljava/lang/String;
    .locals 2

    .line 2540
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2541
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2542
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2544
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2545
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2548
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStrokeBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2561
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2562
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2563
    check-cast v0, Ljava/lang/String;

    .line 2564
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2566
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    return-object v0

    .line 2569
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 2637
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    return v0
.end method

.method public getStyle()Ljava/lang/String;
    .locals 2

    .line 2679
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2680
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2681
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2683
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2684
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2687
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getStyleBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2700
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2701
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2702
    check-cast v0, Ljava/lang/String;

    .line 2703
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2705
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    return-object v0

    .line 2708
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getVisible()Z
    .locals 1

    .line 2776
    iget-boolean v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    return v0
.end method

.method public getWidth()I
    .locals 1

    .line 2819
    iget v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    return v0
.end method

.method public getX()Ljava/lang/String;
    .locals 2

    .line 2861
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2862
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2863
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2865
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2866
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2869
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getXBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2882
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2883
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2884
    check-cast v0, Ljava/lang/String;

    .line 2885
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2887
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    return-object v0

    .line 2890
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method public getY()Ljava/lang/String;
    .locals 2

    .line 2957
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 2958
    instance-of v1, v0, Ljava/lang/String;

    if-nez v1, :cond_0

    .line 2959
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    .line 2961
    invoke-virtual {v0}, Lcom/explorestack/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    .line 2962
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 2965
    :cond_0
    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public getYBytes()Lcom/explorestack/protobuf/ByteString;
    .locals 2

    .line 2978
    iget-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 2979
    instance-of v1, v0, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 2980
    check-cast v0, Ljava/lang/String;

    .line 2981
    invoke-static {v0}, Lcom/explorestack/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/explorestack/protobuf/ByteString;

    move-result-object v0

    .line 2983
    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    return-object v0

    .line 2986
    :cond_0
    check-cast v0, Lcom/explorestack/protobuf/ByteString;

    return-object v0
.end method

.method protected internalGetFieldAccessorTable()Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;
    .locals 3

    .line 1598
    sget-object v0, Lio/bidmachine/protobuf/ExtensionsProto;->internal_static_bidmachine_protobuf_AdExtension_ControlAsset_fieldAccessorTable:Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    const-class v1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    const-class v2, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1599
    invoke-virtual {v0, v1, v2}, Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;->ensureFieldAccessorsInitialized(Ljava/lang/Class;Ljava/lang/Class;)Lcom/explorestack/protobuf/GeneratedMessageV3$FieldAccessorTable;

    move-result-object v0

    return-object v0
.end method

.method public final isInitialized()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

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

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1823
    :try_start_0
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2200()Lcom/explorestack/protobuf/Parser;

    move-result-object v1

    invoke-interface {v1, p1, p2}, Lcom/explorestack/protobuf/Parser;->parsePartialFrom(Lcom/explorestack/protobuf/CodedInputStream;Lcom/explorestack/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    :try_end_0
    .catch Lcom/explorestack/protobuf/InvalidProtocolBufferException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 1829
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    :cond_0
    return-object p0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1825
    :try_start_1
    invoke-virtual {p1}, Lcom/explorestack/protobuf/InvalidProtocolBufferException;->getUnfinishedMessage()Lcom/explorestack/protobuf/MessageLite;

    move-result-object p2

    check-cast p2, Lio/bidmachine/protobuf/AdExtension$ControlAsset;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1826
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

    .line 1829
    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1831
    :cond_1
    throw p1
.end method

.method public mergeFrom(Lcom/explorestack/protobuf/Message;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 1

    .line 1736
    instance-of v0, p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    if-eqz v0, :cond_0

    .line 1737
    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1

    .line 1739
    :cond_0
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeFrom(Lcom/explorestack/protobuf/Message;)Lcom/explorestack/protobuf/AbstractMessage$Builder;

    return-object p0
.end method

.method public mergeFrom(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 2

    .line 1745
    invoke-static {}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getDefaultInstance()Lio/bidmachine/protobuf/AdExtension$ControlAsset;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 1746
    :cond_0
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getContent()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1747
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1748
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1750
    :cond_1
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFill()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1751
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$500(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 1752
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1754
    :cond_2
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1755
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getFontStyle()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setFontStyle(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1757
    :cond_3
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v0

    if-eqz v0, :cond_4

    .line 1758
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setHeight(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1760
    :cond_4
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v0

    if-eqz v0, :cond_5

    .line 1761
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getHideafter()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setHideafter(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1763
    :cond_5
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getMargin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_6

    .line 1764
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 1765
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1767
    :cond_6
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_7

    .line 1768
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOpacity()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setOpacity(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1770
    :cond_7
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 1771
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getOutlined()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setOutlined(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1773
    :cond_8
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getPadding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_9

    .line 1774
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1200(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 1775
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1777
    :cond_9
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getShadow()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1778
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1300(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 1779
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1781
    :cond_a
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStroke()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b

    .line 1782
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1400(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 1783
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1785
    :cond_b
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_c

    .line 1786
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStrokeWidth()F

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setStrokeWidth(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1788
    :cond_c
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getStyle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d

    .line 1789
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1600(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 1790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1792
    :cond_d
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1793
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getVisible()Z

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setVisible(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1795
    :cond_e
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v0

    if-eqz v0, :cond_f

    .line 1796
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setWidth(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1798
    :cond_f
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getX()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    .line 1799
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$1900(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 1800
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1802
    :cond_10
    invoke-virtual {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->getY()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_11

    .line 1803
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2000(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 1804
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    .line 1806
    :cond_11
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2100(Lio/bidmachine/protobuf/AdExtension$ControlAsset;)Lcom/explorestack/protobuf/UnknownFieldSet;

    move-result-object p1

    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    .line 1807
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/AbstractMessage$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 3051
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->mergeUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setContent(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1889
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1892
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1893
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setContentBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1922
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1924
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2300(Lcom/explorestack/protobuf/ByteString;)V

    .line 1926
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->content_:Ljava/lang/Object;

    .line 1927
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1710
    invoke-super {p0, p1, p2}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;Ljava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setFill(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1985
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1988
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 1989
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setFillBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2018
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2020
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2400(Lcom/explorestack/protobuf/ByteString;)V

    .line 2022
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fill_:Ljava/lang/Object;

    .line 2023
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setFontStyle(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2051
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->fontStyle_:I

    .line 2052
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setHeight(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2094
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->height_:I

    .line 2095
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setHideafter(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2137
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->hideafter_:I

    .line 2138
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setMargin(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2210
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2213
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2214
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setMarginBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2243
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2245
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2500(Lcom/explorestack/protobuf/ByteString;)V

    .line 2247
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->margin_:Ljava/lang/Object;

    .line 2248
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setOpacity(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2276
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->opacity_:F

    .line 2277
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setOutlined(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2319
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->outlined_:Z

    .line 2320
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setPadding(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2392
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2395
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2396
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setPaddingBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2425
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2427
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2600(Lcom/explorestack/protobuf/ByteString;)V

    .line 2429
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->padding_:Ljava/lang/Object;

    .line 2430
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1, p2, p3}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 1726
    invoke-super {p0, p1, p2, p3}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setRepeatedField(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;ILjava/lang/Object;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setShadow(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2488
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2491
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2492
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setShadowBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2521
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2523
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2700(Lcom/explorestack/protobuf/ByteString;)V

    .line 2525
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->shadow_:Ljava/lang/Object;

    .line 2526
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setStroke(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2584
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2587
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2588
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2617
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2619
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2800(Lcom/explorestack/protobuf/ByteString;)V

    .line 2621
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->stroke_:Ljava/lang/Object;

    .line 2622
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setStrokeWidth(F)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2650
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->strokeWidth_:F

    .line 2651
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyle(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2723
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2726
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2727
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setStyleBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2756
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2758
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$2900(Lcom/explorestack/protobuf/ByteString;)V

    .line 2760
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->style_:Ljava/lang/Object;

    .line 2761
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/Message$Builder;
    .locals 0

    .line 1586
    invoke-virtual {p0, p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    move-result-object p1

    return-object p1
.end method

.method public final setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 3045
    invoke-super {p0, p1}, Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;->setUnknownFields(Lcom/explorestack/protobuf/UnknownFieldSet;)Lcom/explorestack/protobuf/GeneratedMessageV3$Builder;

    move-result-object p1

    check-cast p1, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;

    return-object p1
.end method

.method public setVisible(Z)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2789
    iput-boolean p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->visible_:Z

    .line 2790
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setWidth(I)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2832
    iput p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->width_:I

    .line 2833
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setX(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2905
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2908
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2909
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setXBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 2938
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2940
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$3000(Lcom/explorestack/protobuf/ByteString;)V

    .line 2942
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->x_:Ljava/lang/Object;

    .line 2943
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setY(Ljava/lang/String;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 3001
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3004
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3005
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method

.method public setYBytes(Lcom/explorestack/protobuf/ByteString;)Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;
    .locals 0

    .line 3034
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3036
    invoke-static {p1}, Lio/bidmachine/protobuf/AdExtension$ControlAsset;->access$3100(Lcom/explorestack/protobuf/ByteString;)V

    .line 3038
    iput-object p1, p0, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->y_:Ljava/lang/Object;

    .line 3039
    invoke-virtual {p0}, Lio/bidmachine/protobuf/AdExtension$ControlAsset$Builder;->onChanged()V

    return-object p0
.end method
