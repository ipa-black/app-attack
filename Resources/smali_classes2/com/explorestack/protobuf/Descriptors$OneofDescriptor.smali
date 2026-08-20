.class public final Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;
.super Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "OneofDescriptor"
.end annotation


# instance fields
.field private containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

.field private fieldCount:I

.field private fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

.field private final file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

.field private final fullName:Ljava/lang/String;

.field private final index:I

.field private proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;


# direct methods
.method private constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 2713
    invoke-direct {p0, v0}, Lcom/explorestack/protobuf/Descriptors$GenericDescriptor;-><init>(Lcom/explorestack/protobuf/Descriptors$1;)V

    .line 2714
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    .line 2715
    invoke-virtual {p1}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, p1}, Lcom/explorestack/protobuf/Descriptors;->access$1700(Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    .line 2716
    iput-object p2, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    .line 2717
    iput p4, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    .line 2719
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    const/4 p1, 0x0

    .line 2720
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;ILcom/explorestack/protobuf/Descriptors$1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/explorestack/protobuf/Descriptors$DescriptorValidationException;
        }
    .end annotation

    .line 2653
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;-><init>(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;Lcom/explorestack/protobuf/Descriptors$FileDescriptor;Lcom/explorestack/protobuf/Descriptors$Descriptor;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2653
    iget-object p0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p0
.end method

.method static synthetic access$1902(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 0

    .line 2653
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    return-object p1
.end method

.method static synthetic access$2002(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;I)I
    .locals 0

    .line 2653
    iput p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return p1
.end method

.method static synthetic access$2008(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;)I
    .locals 2

    .line 2653
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method static synthetic access$2200(Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2653
    invoke-direct {p0, p1}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V

    return-void
.end method

.method private setProto(Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;)V
    .locals 0

    .line 2705
    iput-object p1, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-void
.end method


# virtual methods
.method public getContainingType()Lcom/explorestack/protobuf/Descriptors$Descriptor;
    .locals 1

    .line 2675
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->containingType:Lcom/explorestack/protobuf/Descriptors$Descriptor;

    return-object v0
.end method

.method public getField(I)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
    .locals 1

    .line 2696
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    aget-object p1, v0, p1

    return-object p1
.end method

.method public getFieldCount()I
    .locals 1

    .line 2679
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fieldCount:I

    return v0
.end method

.method public getFields()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;",
            ">;"
        }
    .end annotation

    .line 2692
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFile()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;
    .locals 1

    .line 2666
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->file:Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 2671
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 2656
    iget v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->index:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 2661
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;
    .locals 1

    .line 2683
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    invoke-virtual {v0}, Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;->getOptions()Lcom/explorestack/protobuf/DescriptorProtos$OneofOptions;

    move-result-object v0

    return-object v0
.end method

.method public isSynthetic()Z
    .locals 4

    .line 2687
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->fields:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    aget-object v0, v0, v2

    invoke-static {v0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;->access$3200(Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v2, v3

    :cond_0
    return v2
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;
    .locals 1

    .line 2701
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->proto:Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    return-object v0
.end method

.method public bridge synthetic toProto()Lcom/explorestack/protobuf/Message;
    .locals 1

    .line 2653
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$OneofDescriptor;->toProto()Lcom/explorestack/protobuf/DescriptorProtos$OneofDescriptorProto;

    move-result-object v0

    return-object v0
.end method
