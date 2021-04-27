.class public Landroidx/appcompat/app/AlertController$AlertParams;
.super Ljava/lang/Object;
.source "AlertController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/appcompat/app/AlertController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertParams"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;
    }
.end annotation


# instance fields
.field public mAdapter:Landroid/widget/ListAdapter;

.field public mCancelable:Z

.field public mCheckedItem:I

.field public mCheckedItems:[Z

.field public final mContext:Landroid/content/Context;

.field public mCursor:Landroid/database/Cursor;

.field public mCustomTitleView:Landroid/view/View;

.field public mForceInverseBackground:Z

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconAttrId:I

.field public mIconId:I

.field public final mInflater:Landroid/view/LayoutInflater;

.field public mIsCheckedColumn:Ljava/lang/String;

.field public mIsMultiChoice:Z

.field public mIsSingleChoice:Z

.field public mItems:[Ljava/lang/CharSequence;

.field public mLabelColumn:Ljava/lang/String;

.field public mMessage:Ljava/lang/CharSequence;

.field public mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNegativeButtonText:Ljava/lang/CharSequence;

.field public mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mNeutralButtonText:Ljava/lang/CharSequence;

.field public mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field public mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

.field public mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

.field public mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field public mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field public mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

.field public mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

.field public mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

.field public mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

.field public mPositiveButtonText:Ljava/lang/CharSequence;

.field public mRecycleOnMeasure:Z

.field public mTitle:Ljava/lang/CharSequence;

.field public mView:Landroid/view/View;

.field public mViewLayoutResId:I

.field public mViewSpacingBottom:I

.field public mViewSpacingLeft:I

.field public mViewSpacingRight:I

.field public mViewSpacingSpecified:Z

.field public mViewSpacingTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 924
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 869
    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    .line 871
    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    .line 897
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    const/4 v0, -0x1

    .line 901
    iput v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    const/4 v0, 0x1

    .line 909
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 925
    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    .line 926
    iput-boolean v0, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCancelable:Z

    const-string v0, "layout_inflater"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method

.method private createListView(Landroidx/appcompat/app/AlertController;)V
    .locals 16

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams;"

    const-string v1, "createListView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v5, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mInflater:Landroid/view/LayoutInflater;

    move-object/from16 v0, p1

    iget v6, v0, Landroidx/appcompat/app/AlertController;->mListLayout:I

    const/4 v7, 0x0

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const/4 v1, 0x6

    aput-object v7, v2, v1

    const-string v0, "Landroid/view/LayoutInflater;"

    const-string v1, "inflate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const-string v0, "Landroid/view/LayoutInflater;"

    const-string v1, "inflate"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    check-cast v5, Landroidx/appcompat/app/AlertController$RecycleListView;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    const/4 v13, 0x1

    if-eqz v6, :cond_1

    move-object/from16 v0, p0

    iget-object v9, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v9, :cond_0

    new-instance v14, Landroidx/appcompat/app/AlertController$AlertParams$1;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget v9, v0, Landroidx/appcompat/app/AlertController;->mMultiChoiceItemLayout:I

    const v10, 0x1020014

    move-object/from16 v0, p0

    iget-object v11, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    move-object v6, v14

    move-object/from16 v7, p0

    move-object v12, v5

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/app/AlertController$AlertParams$1;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;II[Ljava/lang/CharSequence;Landroidx/appcompat/app/AlertController$RecycleListView;)V

    goto/16 :goto_1

    :cond_0
    new-instance v14, Landroidx/appcompat/app/AlertController$AlertParams$2;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    const/4 v10, 0x0

    move-object v6, v14

    move-object/from16 v7, p0

    move-object v11, v5

    move-object/from16 v12, p1

    invoke-direct/range {v6 .. v12}, Landroidx/appcompat/app/AlertController$AlertParams$2;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroid/content/Context;Landroid/database/Cursor;ZLandroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    goto/16 :goto_1

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v6, :cond_2

    move-object/from16 v0, p1

    iget v6, v0, Landroidx/appcompat/app/AlertController;->mSingleChoiceItemLayout:I

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p1

    iget v6, v0, Landroidx/appcompat/app/AlertController;->mListItemLayout:I

    :goto_0
    move v9, v6

    move-object/from16 v0, p0

    iget-object v10, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    const v6, 0x1020014

    if-eqz v10, :cond_3

    new-instance v14, Landroid/widget/SimpleCursorAdapter;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    new-array v11, v13, [Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v7, v11, v12

    new-array v15, v13, [I

    aput v6, v15, v12

    move-object v7, v14

    move-object v12, v15

    invoke-direct/range {v7 .. v12}, Landroid/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[I)V

    goto/16 :goto_1

    :cond_3
    move-object/from16 v0, p0

    iget-object v14, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v14, :cond_4

    goto/16 :goto_1

    :cond_4
    new-instance v14, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;

    move-object/from16 v0, p0

    iget-object v7, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v8, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    invoke-direct {v14, v7, v9, v6, v8}, Landroidx/appcompat/app/AlertController$CheckedItemAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/CharSequence;)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnPrepareListViewListener:Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;

    if-eqz v6, :cond_5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v6, v2, v1

    const/4 v1, 0x5

    aput-object v5, v2, v1

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onPrepareListView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Landroidx/appcompat/app/AlertController$AlertParams$OnPrepareListViewListener;->onPrepareListView(Landroid/widget/ListView;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Ljava/lang/Object;"

    const-string v1, "onPrepareListView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_5
    move-object/from16 v0, p1

    iput-object v14, v0, Landroidx/appcompat/app/AlertController;->mAdapter:Landroid/widget/ListAdapter;

    move-object/from16 v0, p0

    iget v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mCheckedItem:I

    move-object/from16 v0, p1

    iput v6, v0, Landroidx/appcompat/app/AlertController;->mCheckedItem:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    if-eqz v6, :cond_6

    new-instance v6, Landroidx/appcompat/app/AlertController$AlertParams$3;

    move-object/from16 v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {v0 .. v2}, Landroidx/appcompat/app/AlertController$AlertParams$3;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_6
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    if-eqz v6, :cond_7

    new-instance v6, Landroidx/appcompat/app/AlertController$AlertParams$4;

    move-object/from16 v0, v6

    move-object/from16 v1, p0

    move-object/from16 v2, v5

    move-object/from16 v3, p1

    invoke-direct/range {v0 .. v3}, Landroidx/appcompat/app/AlertController$AlertParams$4;-><init>(Landroidx/appcompat/app/AlertController$AlertParams;Landroidx/appcompat/app/AlertController$RecycleListView;Landroidx/appcompat/app/AlertController;)V

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemClickListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_7
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    if-eqz v6, :cond_8

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    aput-object v6, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemSelectedListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setOnItemSelectedListener"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_8
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsSingleChoice:Z

    if-eqz v6, :cond_9

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v13 .. v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setChoiceMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v13}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setChoiceMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_3

    :cond_9
    move-object/from16 v0, p0

    iget-boolean v6, v0, Landroidx/appcompat/app/AlertController$AlertParams;->mIsMultiChoice:Z

    if-eqz v6, :cond_a

    const/4 v6, 0x2

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object v5, v2, v1

    const/4 v1, 0x5

    invoke-static/range {v6 .. v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setChoiceMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertController$RecycleListView;->setChoiceMode(I)V

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroid/widget/ListView;"

    const-string v1, "setChoiceMode"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logAPIExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_a
    :goto_3
    move-object/from16 v0, p1

    iput-object v5, v0, Landroidx/appcompat/app/AlertController;->mListView:Landroid/widget/ListView;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams;"

    const-string v1, "createListView"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public apply(Landroidx/appcompat/app/AlertController;)V
    .locals 12

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v1, 0x4

    aput-object p0, v2, v1

    const/4 v1, 0x5

    aput-object p1, v2, v1

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams;"

    const-string v1, "apply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodEntry(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    if-eqz v5, :cond_0

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setCustomTitle(Landroid/view/View;)V

    goto/16 :goto_0

    :cond_0
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_2

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconId:I

    if-eqz v5, :cond_3

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    :cond_3
    iget v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mIconAttrId:I

    if-eqz v5, :cond_4

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->getIconAttributeResId(I)I

    move-result v5

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setIcon(I)V

    :cond_4
    :goto_0
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    if-eqz v5, :cond_5

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setMessage(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    if-nez v5, :cond_6

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_7

    :cond_6
    const/4 v7, -0x1

    iget-object v8, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v10, 0x0

    iget-object v11, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mPositiveButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_7
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    if-nez v5, :cond_8

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_9

    :cond_8
    const/4 v7, -0x2

    iget-object v8, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v10, 0x0

    iget-object v11, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNegativeButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_9
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    if-nez v5, :cond_a

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_b

    :cond_a
    const/4 v7, -0x3

    iget-object v8, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    iget-object v9, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    const/4 v10, 0x0

    iget-object v11, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mNeutralButtonIcon:Landroid/graphics/drawable/Drawable;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;Landroid/graphics/drawable/Drawable;)V

    :cond_b
    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    if-nez v5, :cond_c

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    if-nez v5, :cond_c

    iget-object v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v5, :cond_d

    :cond_c
    invoke-direct {p0, p1}, Landroidx/appcompat/app/AlertController$AlertParams;->createListView(Landroidx/appcompat/app/AlertController;)V

    :cond_d
    iget-object v7, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mView:Landroid/view/View;

    if-eqz v7, :cond_f

    iget-boolean v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingSpecified:Z

    if-eqz v5, :cond_e

    iget v8, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingLeft:I

    iget v9, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingTop:I

    iget v10, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingRight:I

    iget v11, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewSpacingBottom:I

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;IIII)V

    goto/16 :goto_1

    :cond_e
    invoke-virtual {p1, v7}, Landroidx/appcompat/app/AlertController;->setView(Landroid/view/View;)V

    goto/16 :goto_1

    :cond_f
    iget v5, p0, Landroidx/appcompat/app/AlertController$AlertParams;->mViewLayoutResId:I

    if-eqz v5, :cond_10

    invoke-virtual {p1, v5}, Landroidx/appcompat/app/AlertController;->setView(I)V

    :cond_10
    :goto_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const-string v0, "Landroidx/appcompat/app/AlertController$AlertParams;"

    const-string v1, "apply"

    invoke-static/range {v0 .. v2}, Lorg/umd/logging/Logger;->logMethodExit(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
