.class public final enum Lcom/explorestack/protobuf/adcom/AuditStatusCode;
.super Ljava/lang/Enum;
.source "AuditStatusCode.java"

# interfaces
.implements Lcom/explorestack/protobuf/ProtocolMessageEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/explorestack/protobuf/adcom/AuditStatusCode;",
        ">;",
        "Lcom/explorestack/protobuf/ProtocolMessageEnum;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final enum AUDIT_STATUS_CODE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_APPROVED_VALUE:I = 0x3

.field public static final enum AUDIT_STATUS_CODE_CHANGED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_CHANGED_VALUE:I = 0x5

.field public static final enum AUDIT_STATUS_CODE_DENIED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_DENIED_VALUE:I = 0x4

.field public static final enum AUDIT_STATUS_CODE_INVALID:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_INVALID_VALUE:I = 0x0

.field public static final enum AUDIT_STATUS_CODE_PENDING_AUDIT:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_PENDING_AUDIT_VALUE:I = 0x1

.field public static final enum AUDIT_STATUS_CODE_PRE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field public static final AUDIT_STATUS_CODE_PRE_APPROVED_VALUE:I = 0x2

.field public static final enum UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field private static final VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

.field private static final internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/AuditStatusCode;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 14
    new-instance v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v1, "AUDIT_STATUS_CODE_INVALID"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_INVALID:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 23
    new-instance v1, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v2, "AUDIT_STATUS_CODE_PENDING_AUDIT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3, v3}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_PENDING_AUDIT:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 34
    new-instance v2, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v3, "AUDIT_STATUS_CODE_PRE_APPROVED"

    const/4 v4, 0x2

    invoke-direct {v2, v3, v4, v4}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_PRE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 44
    new-instance v3, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v4, "AUDIT_STATUS_CODE_APPROVED"

    const/4 v5, 0x3

    invoke-direct {v3, v4, v5, v5}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 53
    new-instance v4, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v5, "AUDIT_STATUS_CODE_DENIED"

    const/4 v6, 0x4

    invoke-direct {v4, v5, v6, v6}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_DENIED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 64
    new-instance v5, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const-string v6, "AUDIT_STATUS_CODE_CHANGED"

    const/4 v7, 0x5

    invoke-direct {v5, v6, v7, v7}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_CHANGED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 65
    new-instance v6, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    const/4 v7, 0x6

    const/4 v8, -0x1

    const-string v9, "UNRECOGNIZED"

    invoke-direct {v6, v9, v7, v8}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 9
    filled-new-array/range {v0 .. v6}, [Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->$VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    .line 163
    new-instance v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode$1;

    invoke-direct {v0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode$1;-><init>()V

    sput-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    .line 187
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->values()[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object v0

    sput-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 204
    iput p3, p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    if-eqz p0, :cond_5

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 153
    :cond_0
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_CHANGED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 152
    :cond_1
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_DENIED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 151
    :cond_2
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 150
    :cond_3
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_PRE_APPROVED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 149
    :cond_4
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_PENDING_AUDIT:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 148
    :cond_5
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->AUDIT_STATUS_CODE_INVALID:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0
.end method

.method public static final getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 2

    .line 184
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AdcomProto;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$FileDescriptor;->getEnumTypes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    return-object v0
.end method

.method public static internalGetValueMap()Lcom/explorestack/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/explorestack/protobuf/Internal$EnumLiteMap<",
            "Lcom/explorestack/protobuf/adcom/AuditStatusCode;",
            ">;"
        }
    .end annotation

    .line 160
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->internalValueMap:Lcom/explorestack/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static valueOf(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 139
    invoke-static {p0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->forNumber(I)Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;)Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 2

    .line 191
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-static {}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v1

    if-ne v0, v1, :cond_1

    .line 195
    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 196
    sget-object p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0

    .line 198
    :cond_0
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    invoke-virtual {p0}, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;->getIndex()I

    move-result p0

    aget-object p0, v0, p0

    return-object p0

    .line 192
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "EnumValueDescriptor is not for this type."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    .line 9
    const-class v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object p0
.end method

.method public static values()[Lcom/explorestack/protobuf/adcom/AuditStatusCode;
    .locals 1

    .line 9
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->$VALUES:[Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    invoke-virtual {v0}, [Lcom/explorestack/protobuf/adcom/AuditStatusCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    return-object v0
.end method


# virtual methods
.method public final getDescriptorForType()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;
    .locals 1

    .line 180
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public final getNumber()I
    .locals 2

    .line 125
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    if-eq p0, v0, :cond_0

    .line 129
    iget v0, p0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->value:I

    return v0

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final getValueDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;
    .locals 2

    .line 172
    sget-object v0, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->UNRECOGNIZED:Lcom/explorestack/protobuf/adcom/AuditStatusCode;

    if-eq p0, v0, :cond_0

    .line 176
    invoke-static {}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->getDescriptor()Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/explorestack/protobuf/Descriptors$EnumDescriptor;->getValues()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0}, Lcom/explorestack/protobuf/adcom/AuditStatusCode;->ordinal()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/explorestack/protobuf/Descriptors$EnumValueDescriptor;

    return-object v0

    .line 173
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Can\'t get the descriptor of an unrecognized enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
