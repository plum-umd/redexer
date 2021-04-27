.class Landroidx/print/PrintHelper$1;
.super Landroid/os/AsyncTask;
.source "PrintHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/print/PrintHelper;->writeBitmap(Landroid/print/PrintAttributes;ILandroid/graphics/Bitmap;Landroid/os/ParcelFileDescriptor;Landroid/os/CancellationSignal;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/print/PrintHelper;

.field final synthetic val$attributes:Landroid/print/PrintAttributes;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$cancellationSignal:Landroid/os/CancellationSignal;

.field final synthetic val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

.field final synthetic val$fittingMode:I

.field final synthetic val$pdfAttributes:Landroid/print/PrintAttributes;

.field final synthetic val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;


# direct methods
.method constructor <init>(Landroidx/print/PrintHelper;Landroid/os/CancellationSignal;Landroid/print/PrintAttributes;Landroid/graphics/Bitmap;Landroid/print/PrintAttributes;ILandroid/os/ParcelFileDescriptor;Landroid/print/PrintDocumentAdapter$WriteResultCallback;)V
    .locals 0

    .line 635
    iput-object p1, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iput-object p2, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    iput-object p3, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    iput-object p4, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iput-object p5, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    iput p6, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    iput-object p7, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    iput-object p8, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;

    move-result-object p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Throwable;
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_0
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1
    invoke-virtual {p1}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2
    const/4 v5, 0x0

    if-eqz p1, :cond_0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_0
    :try_start_3
    new-instance p1, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v6, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v6, v6, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;

    invoke-direct {p1, v6, v7}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V

    iget-object v6, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$pdfAttributes:Landroid/print/PrintAttributes;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/print/PrintAttributes;"

    const-string v1, "getColorMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_4
    invoke-virtual {v7}, Landroid/print/PrintAttributes;->getColorMode()I

    move-result v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/print/PrintAttributes;"

    const-string v1, "getColorMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_5
    invoke-static {v6, v7}, Landroidx/print/PrintHelper;->convertBitmapForColorMode(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_6
    invoke-virtual {v7}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_1
    const/4 v7, 0x1

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "startPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_7
    invoke-virtual {p1, v7}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v8
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "startPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_8
    sget-boolean v9, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v9, :cond_2

    new-instance v7, Landroid/graphics/RectF;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_9
    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v9
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$PageInfo;"

    const-string v1, "getContentRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_a
    invoke-virtual {v9}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v9
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$PageInfo;"

    const-string v1, "getContentRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_b
    invoke-direct {v7, v9}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    goto/16 :goto_0

    :cond_2
    new-instance v9, Landroid/print/pdf/PrintedPdfDocument;

    iget-object v10, p0, Landroidx/print/PrintHelper$1;->this$0:Landroidx/print/PrintHelper;

    iget-object v10, v10, Landroidx/print/PrintHelper;->mContext:Landroid/content/Context;

    iget-object v11, p0, Landroidx/print/PrintHelper$1;->val$attributes:Landroid/print/PrintAttributes;

    invoke-direct {v9, v10, v11}, Landroid/print/pdf/PrintedPdfDocument;-><init>(Landroid/content/Context;Landroid/print/PrintAttributes;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v7 .. v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "startPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_c
    invoke-virtual {v9, v7}, Landroid/print/pdf/PrintedPdfDocument;->startPage(I)Landroid/graphics/pdf/PdfDocument$Page;

    move-result-object v7
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "startPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_d
    new-instance v10, Landroid/graphics/RectF;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_e
    invoke-virtual {v7}, Landroid/graphics/pdf/PdfDocument$Page;->getInfo()Landroid/graphics/pdf/PdfDocument$PageInfo;

    move-result-object v11
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getInfo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$PageInfo;"

    const-string v1, "getContentRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_f
    invoke-virtual {v11}, Landroid/graphics/pdf/PdfDocument$PageInfo;->getContentRect()Landroid/graphics/Rect;

    move-result-object v11
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v11, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$PageInfo;"

    const-string v1, "getContentRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_10
    invoke-direct {v10, v11}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "finishPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_11
    invoke-virtual {v9, v7}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "finishPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v9}, Landroid/print/pdf/PrintedPdfDocument;->close()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_12
    move-object v7, v10
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :goto_0
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_13
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v9 .. v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "getWidth"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_14
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v10 .. v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "getHeight"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_15
    iget v11, p0, Landroidx/print/PrintHelper$1;->val$fittingMode:I

    invoke-static {v9, v10, v7, v11}, Landroidx/print/PrintHelper;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;

    move-result-object v9

    sget-boolean v10, Landroidx/print/PrintHelper;->IS_MIN_MARGINS_HANDLING_CORRECT:Z

    if-eqz v10, :cond_3

    goto/16 :goto_1

    :cond_3
    iget v10, v7, Landroid/graphics/RectF;->left:F

    iget v11, v7, Landroid/graphics/RectF;->top:F
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v9, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v10 .. v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    invoke-static/range {v11 .. v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "postTranslate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_16
    invoke-virtual {v9, v10, v11}, Landroid/graphics/Matrix;->postTranslate(FF)Z
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Matrix;"

    const-string v1, "postTranslate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getCanvas"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    :try_start_17
    move-result-object v10
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getCanvas"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v10, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "clipRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_18
    invoke-virtual {v10, v7}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "clipRect"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getCanvas"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/graphics/pdf/PdfDocument$Page;->getCanvas()Landroid/graphics/Canvas;

    :try_start_19
    move-result-object v7
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/graphics/pdf/PdfDocument$Page;"

    const-string v1, "getCanvas"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object v9, v2, v1

    const/4 v1, 0x7

    aput-object v5, v2, v1

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawBitmap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1a
    invoke-virtual {v7, v6, v9, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Canvas;"

    const-string v1, "drawBitmap"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v8, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "finishPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v8}, Landroid/print/pdf/PrintedPdfDocument;->finishPage(Landroid/graphics/pdf/PdfDocument$Page;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "finishPage"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1b
    iget-object v7, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v7, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1c
    invoke-virtual {v7}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v7
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v7 .. v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v7, :cond_6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1d
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_4

    :try_start_1e
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_1f
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_0
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_0
    :cond_4
    :try_start_20
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v6, p1, :cond_5
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_21
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :cond_6
    :try_start_22
    new-instance v7, Ljava/io/FileOutputStream;

    iget-object v8, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "getFileDescriptor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_23
    invoke-virtual {v8}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v8
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_0

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v8, v2, v1

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "getFileDescriptor"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_24
    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/io/FileDescriptor;)V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v7, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "writeTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_25
    invoke-virtual {p1, v7}, Landroid/print/pdf/PrintedPdfDocument;->writeTo(Ljava/io/OutputStream;)V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_0

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "writeTo"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_26
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_7

    :try_start_27
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_1
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_28
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_1
    :cond_7
    :try_start_29
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v6, p1, :cond_8
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2a
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v5

    :catchall_0
    :try_start_2b
    move-exception v5
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2c
    invoke-virtual {p1}, Landroid/print/pdf/PrintedPdfDocument;->close()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/pdf/PrintedPdfDocument;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;

    if-eqz p1, :cond_9

    :try_start_2d
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$fileDescriptor:Landroid/os/ParcelFileDescriptor;
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_2d} :catch_2
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_2e
    invoke-virtual {p1}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_2e} :catch_2
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/os/ParcelFileDescriptor;"

    const-string v1, "close"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :catch_2
    :cond_9
    :try_start_2f
    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$bitmap:Landroid/graphics/Bitmap;

    if-eq v6, p1, :cond_a
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_1

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :try_start_30
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/graphics/Bitmap;"

    const-string v1, "recycle"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    throw v5

    :catchall_1
    move-exception p1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "doInBackground"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "onPostExecute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Landroidx/print/PrintHelper$1;->onPostExecute(Ljava/lang/Throwable;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "onPostExecute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Throwable;)V
    .locals 8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "onPostExecute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/print/PrintHelper$1;->val$cancellationSignal:Landroid/os/CancellationSignal;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5}, Landroid/os/CancellationSignal;->isCanceled()Z

    move-result v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    invoke-static/range {v5 .. v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/os/CancellationSignal;"

    const-string v1, "isCanceled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_0

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteCancelled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteCancelled()V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteCancelled"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v5, 0x1

    new-array v5, v5, [Landroid/print/PageRange;

    const/4 v6, 0x0

    sget-object v7, Landroid/print/PageRange;->ALL_PAGES:Landroid/print/PageRange;

    aput-object v7, v5, v6

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteFinished"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFinished([Landroid/print/PageRange;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteFinished"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    :cond_1
    const-string v5, "PrintHelper"

    const-string v6, "Error writing printed content"

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const/4 v1, 0x6

    aput-object p1, v2, v1

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v5, v6, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/util/Log;"

    const-string v1, "e"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object p1, p0, Landroidx/print/PrintHelper$1;->val$writeResultCallback:Landroid/print/PrintDocumentAdapter$WriteResultCallback;

    const/4 v5, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p1, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteFailed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1, v5}, Landroid/print/PrintDocumentAdapter$WriteResultCallback;->onWriteFailed(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/print/PrintDocumentAdapter$WriteResultCallback;"

    const-string v1, "onWriteFailed"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/print/PrintHelper$1;"

    const-string v1, "onPostExecute"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
