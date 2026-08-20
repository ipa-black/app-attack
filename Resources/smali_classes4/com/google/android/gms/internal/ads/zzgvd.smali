.class public final Lcom/google/android/gms/internal/ads/zzgvd;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzgfw;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzgvp;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzggz;

.field private final zzc:I


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzgvp;Lcom/google/android/gms/internal/ads/zzggz;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzb:Lcom/google/android/gms/internal/ads/zzggz;

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzc:I

    return-void
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    array-length v0, p1

    iget v1, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzc:I

    if-lt v0, v1, :cond_1

    sub-int v1, v0, v1

    const/4 v2, 0x0

    .line 3
    invoke-static {p1, v2, v1}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v1

    iget v3, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzc:I

    sub-int v3, v0, v3

    .line 4
    invoke-static {p1, v3, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    if-nez p2, :cond_0

    new-array p2, v2, [B

    :cond_0
    const/16 v0, 0x8

    .line 5
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    array-length v3, p2

    int-to-long v3, v3

    const-wide/16 v5, 0x8

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-static {v2, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzb:Lcom/google/android/gms/internal/ads/zzggz;

    filled-new-array {p2, v1, v0}, [[B

    move-result-object p2

    .line 6
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p2

    invoke-interface {v2, p1, p2}, Lcom/google/android/gms/internal/ads/zzggz;->zza([B[B)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    .line 7
    invoke-interface {p1, v1}, Lcom/google/android/gms/internal/ads/zzgvp;->zza([B)[B

    move-result-object p1

    return-object p1

    .line 2
    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final zzb([B[B)[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zza:Lcom/google/android/gms/internal/ads/zzgvp;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzgvp;->zzb([B)[B

    move-result-object p1

    const/16 v0, 0x8

    .line 2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-static {v1, v0}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzgvd;->zzb:Lcom/google/android/gms/internal/ads/zzggz;

    filled-new-array {p2, p1, v0}, [[B

    move-result-object p2

    .line 3
    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p2

    invoke-interface {v1, p2}, Lcom/google/android/gms/internal/ads/zzggz;->zzb([B)[B

    move-result-object p2

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzgut;->zzb([[B)[B

    move-result-object p1

    return-object p1
.end method
