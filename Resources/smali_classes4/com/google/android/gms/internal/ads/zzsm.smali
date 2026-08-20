.class public final synthetic Lcom/google/android/gms/internal/ads/zzsm;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@21.5.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic zza:Lcom/google/android/gms/internal/ads/zzsq;

.field public final synthetic zzb:Lcom/google/android/gms/internal/ads/zzsr;

.field public final synthetic zzc:Lcom/google/android/gms/internal/ads/zzry;

.field public final synthetic zzd:Lcom/google/android/gms/internal/ads/zzsd;

.field public final synthetic zze:Ljava/io/IOException;

.field public final synthetic zzf:Z


# direct methods
.method public synthetic constructor <init>(Lcom/google/android/gms/internal/ads/zzsq;Lcom/google/android/gms/internal/ads/zzsr;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;Ljava/io/IOException;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Lcom/google/android/gms/internal/ads/zzsr;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzc:Lcom/google/android/gms/internal/ads/zzry;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzd:Lcom/google/android/gms/internal/ads/zzsd;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzsm;->zze:Ljava/io/IOException;

    iput-boolean p6, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzf:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzsm;->zza:Lcom/google/android/gms/internal/ads/zzsq;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzb:Lcom/google/android/gms/internal/ads/zzsr;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzc:Lcom/google/android/gms/internal/ads/zzry;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzd:Lcom/google/android/gms/internal/ads/zzsd;

    iget-object v6, p0, Lcom/google/android/gms/internal/ads/zzsm;->zze:Ljava/io/IOException;

    iget-boolean v7, p0, Lcom/google/android/gms/internal/ads/zzsm;->zzf:Z

    iget v2, v0, Lcom/google/android/gms/internal/ads/zzsq;->zza:I

    iget-object v3, v0, Lcom/google/android/gms/internal/ads/zzsq;->zzb:Lcom/google/android/gms/internal/ads/zzsh;

    invoke-interface/range {v1 .. v7}, Lcom/google/android/gms/internal/ads/zzsr;->zzai(ILcom/google/android/gms/internal/ads/zzsh;Lcom/google/android/gms/internal/ads/zzry;Lcom/google/android/gms/internal/ads/zzsd;Ljava/io/IOException;Z)V

    return-void
.end method
