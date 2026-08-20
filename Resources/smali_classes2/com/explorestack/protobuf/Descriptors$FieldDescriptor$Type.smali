.class public final enum Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
.super Ljava/lang/Enum;
.source "Descriptors.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/explorestack/protobuf/Descriptors$FieldDescriptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

.field public static final enum UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;


# instance fields
.field private javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 1273
    new-instance v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v0, v1

    const/4 v2, 0x0

    sget-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v4, "DOUBLE"

    invoke-direct {v1, v4, v2, v3}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v1, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->DOUBLE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1274
    new-instance v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v1, v2

    const/4 v3, 0x1

    sget-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v5, "FLOAT"

    invoke-direct {v2, v5, v3, v4}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FLOAT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1275
    new-instance v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v2, v3

    const/4 v4, 0x2

    sget-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v6, "INT64"

    invoke-direct {v3, v6, v4, v5}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v3, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1276
    new-instance v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v3, v4

    const/4 v5, 0x3

    sget-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v7, "UINT64"

    invoke-direct {v4, v7, v5, v6}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v4, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1277
    new-instance v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v4, v5

    const/4 v6, 0x4

    sget-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v8, "INT32"

    invoke-direct {v5, v8, v6, v7}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v5, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->INT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1278
    new-instance v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v5, v6

    const/4 v7, 0x5

    sget-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v9, "FIXED64"

    invoke-direct {v6, v9, v7, v8}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v6, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1279
    new-instance v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v6, v7

    const/4 v8, 0x6

    sget-object v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v10, "FIXED32"

    invoke-direct {v7, v10, v8, v9}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v7, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->FIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1280
    new-instance v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v7, v8

    const/4 v9, 0x7

    sget-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BOOLEAN:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v11, "BOOL"

    invoke-direct {v8, v11, v9, v10}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v8, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BOOL:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1281
    new-instance v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v8, v9

    const/16 v10, 0x8

    sget-object v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v12, "STRING"

    invoke-direct {v9, v12, v10, v11}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v9, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1282
    new-instance v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v9, v10

    const/16 v11, 0x9

    sget-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v13, "GROUP"

    invoke-direct {v10, v13, v11, v12}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v10, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->GROUP:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1283
    new-instance v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v10, v11

    const/16 v12, 0xa

    sget-object v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v14, "MESSAGE"

    invoke-direct {v11, v14, v12, v13}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v11, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->MESSAGE:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1284
    new-instance v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v11, v12

    const/16 v13, 0xb

    sget-object v14, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->BYTE_STRING:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v15, "BYTES"

    invoke-direct {v12, v15, v13, v14}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v12, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->BYTES:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1285
    new-instance v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v12, v13

    const/16 v14, 0xc

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v18, v0

    const-string v0, "UINT32"

    invoke-direct {v13, v0, v14, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v13, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->UINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1286
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v13, v0

    const/16 v14, 0xd

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v19, v1

    const-string v1, "ENUM"

    invoke-direct {v0, v1, v14, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ENUM:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1287
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v14, v0

    const/16 v1, 0xe

    sget-object v15, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v20, v2

    const-string v2, "SFIXED32"

    invoke-direct {v0, v2, v1, v15}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1288
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object v15, v0

    const/16 v1, 0xf

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    move-object/from16 v21, v3

    const-string v3, "SFIXED64"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SFIXED64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1289
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object/from16 v16, v0

    const/16 v1, 0x10

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->INT:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v3, "SINT32"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT32:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    .line 1290
    new-instance v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object/from16 v17, v0

    const/16 v1, 0x11

    sget-object v2, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;->LONG:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    const-string v3, "SINT64"

    invoke-direct {v0, v3, v1, v2}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;-><init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->SINT64:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    .line 1272
    filled-new-array/range {v0 .. v17}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;",
            ")V"
        }
    .end annotation

    .line 1292
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1293
    iput-object p3, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-void
.end method

.method public static valueOf(Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1307
    invoke-static {}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->getNumber()I

    move-result p0

    add-int/lit8 p0, p0, -0x1

    aget-object p0, v0, p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1272
    const-class v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;
    .locals 1

    .line 1272
    sget-object v0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->$VALUES:[Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;

    return-object v0
.end method


# virtual methods
.method public getJavaType()Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;
    .locals 1

    .line 1303
    iget-object v0, p0, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->javaType:Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$JavaType;

    return-object v0
.end method

.method public toProto()Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;
    .locals 1

    .line 1299
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$FieldDescriptor$Type;->ordinal()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;->forNumber(I)Lcom/explorestack/protobuf/DescriptorProtos$FieldDescriptorProto$Type;

    move-result-object v0

    return-object v0
.end method
