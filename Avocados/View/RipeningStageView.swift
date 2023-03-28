//
//  RipeningStage.swift
//  Avocados
//
//  Created by Rafael Carvalho on 23/03/23.
//

import SwiftUI

struct RipeningStageView: View {
    var ripeningStages: [Ripening] = ripeningData
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25, content: {
                    ForEach(ripeningStages) { stage in
                        RipeningView(ripening: stage)
                    }
                })
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }
        }
    }
}

struct RipeningStageView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStageView(ripeningStages: ripeningData)
    }
}
