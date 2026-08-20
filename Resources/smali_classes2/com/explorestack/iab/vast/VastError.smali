.class public Lcom/explorestack/iab/vast/VastError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_CODE_BAD_FILE:I = 0x193

.field public static final ERROR_CODE_BAD_URI:I = 0x12d

.field public static final ERROR_CODE_DURATION:I = 0xca

.field public static final ERROR_CODE_ERROR_SHOWING:I = 0x195

.field public static final ERROR_CODE_EXCEEDED_WRAPPER_LIMIT:I = 0x12e

.field public static final ERROR_CODE_EXPIRED:I = 0x4

.field public static final ERROR_CODE_GENERAL_COMPANION:I = 0x258

.field public static final ERROR_CODE_GENERAL_WRAPPER:I = 0x12c

.field public static final ERROR_CODE_NONE:I = 0x0

.field public static final ERROR_CODE_NO_FILE:I = 0x191

.field public static final ERROR_CODE_NO_NETWORK:I = 0x1

.field public static final ERROR_CODE_PLACEHOLDER_TIMEOUT:I = 0x3

.field public static final ERROR_CODE_SHOW_FAILED:I = 0x2

.field public static final ERROR_CODE_UNKNOWN:I = 0x384

.field public static final ERROR_CODE_VAST_AD_IS_NULL:I = 0x5

.field public static final ERROR_CODE_WRAPPER_RESPONSE_NO_AD:I = 0x12f

.field public static final ERROR_CODE_XML_PARSING:I = 0x64

.field public static final ERROR_CODE_XML_VALIDATE:I = 0x65


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Z
    .locals 1

    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
